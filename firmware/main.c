#include <avr/interrupt.h>
#include <avr/io.h>
#include <util/atomic.h>
#include <util/delay.h>

#include "dac.h"
#include "gate.h"
#include "lcd.h"
#include "spi.h"
#include "twi.h"
#include "usart.h"

#define PCF8574T_ADDRESS 0x27

#define ROTARY_ENCODER_MIN 0
#define ROTARY_ENCODER_MAX 255

volatile uint8_t rotary_encoder = 0;
volatile uint16_t milliseconds = 0;

ISR(INT0_vect) {
    uint8_t pin_b = PIND & (1<<PD3);
    if (pin_b && rotary_encoder > ROTARY_ENCODER_MIN) {
        rotary_encoder--;
    } else if (!pin_b && rotary_encoder < ROTARY_ENCODER_MAX) {
        rotary_encoder++;
    }
}

ISR(TIMER0_COMP_vect) {
    milliseconds++;
}

enum channel_type {
    synth,
    drum,
};

struct step {
    bool enabled;
    uint8_t note;
};

struct channel {
    enum channel_type type;
    struct step steps[16];
};

struct sequencer_state {
    uint8_t tempo;
    bool is_running;
    uint8_t current_step;
    uint8_t current_channel;
    struct channel channels[8];
};

void rotary_encoder_init();
void button_pressed(struct sequencer_state* sequencer, uint8_t button);
void button_released(struct sequencer_state* sequencer, uint8_t button);
uint16_t note_to_cv(uint8_t note);

int main() {
    usart_init();
    twi_init();
    lcd_init(PCF8574T_ADDRESS);
    rotary_encoder_init();
    spi_init();

    sei();

    lcd_turn_on(PCF8574T_ADDRESS);
    lcd_cursor_home(PCF8574T_ADDRESS);

    struct sequencer_state sequencer = {
        .tempo = 120,
        .is_running = false,
        .current_step = 0,
        .current_channel = 0,
        .channels = {
            (struct channel) { .type = synth, .steps = { (struct step) { .enabled = false, .note = 48 } } },
            (struct channel) { .type = synth, .steps = { (struct step) { .enabled = false, .note = 48 } } },
            (struct channel) { .type = drum, .steps = { (struct step) { .enabled = false, .note = 48 } } },
            (struct channel) { .type = drum, .steps = { (struct step) { .enabled = false, .note = 48 } } },
            (struct channel) { .type = drum, .steps = { (struct step) { .enabled = false, .note = 48 } } },
            (struct channel) { .type = drum, .steps = { (struct step) { .enabled = false, .note = 48 } } },
            (struct channel) { .type = drum, .steps = { (struct step) { .enabled = false, .note = 48 } } },
            (struct channel) { .type = drum, .steps = { (struct step) { .enabled = false, .note = 48 } } },
        },
    };

    // Setup test state
    sequencer.is_running = true;
    sequencer.tempo = 100;
    sequencer.channels[0].steps[0].enabled = true;
    sequencer.channels[0].steps[0].note = 0;
    sequencer.channels[0].steps[1].enabled = true;
    sequencer.channels[0].steps[1].note = 0;
    sequencer.channels[0].steps[2].enabled = true;
    sequencer.channels[0].steps[2].note = 0;
    sequencer.channels[0].steps[3].enabled = true;
    sequencer.channels[0].steps[3].note = 0;
    sequencer.channels[0].steps[4].enabled = true;
    sequencer.channels[0].steps[4].note = 48;
    sequencer.channels[0].steps[5].enabled = true;
    sequencer.channels[0].steps[5].note = 48;
    sequencer.channels[0].steps[6].enabled = true;
    sequencer.channels[0].steps[6].note = 48;
    sequencer.channels[0].steps[7].enabled = true;
    sequencer.channels[0].steps[7].note = 48;
    sequencer.channels[0].steps[8].enabled = false;
    sequencer.channels[0].steps[8].note = 119;
    sequencer.channels[0].steps[9].enabled = false;
    sequencer.channels[0].steps[9].note = 119;
    sequencer.channels[0].steps[10].enabled = false;
    sequencer.channels[0].steps[10].note = 119;
    sequencer.channels[0].steps[11].enabled = false;
    sequencer.channels[0].steps[11].note = 119;
    sequencer.channels[0].steps[12].enabled = false;
    sequencer.channels[0].steps[12].note = 48;
    sequencer.channels[0].steps[13].enabled = false;
    sequencer.channels[0].steps[13].note = 48;
    sequencer.channels[0].steps[14].enabled = false;
    sequencer.channels[0].steps[14].note = 48;
    sequencer.channels[0].steps[15].enabled = false;
    sequencer.channels[0].steps[15].note = 48;

    // LED matrix
    DDRA = 0;
    PORTA = 0;

    char lcd_line_one[16] = { 0 };
    char lcd_line_two[16] = { 0 };

    // timer0 - 1 ms timer
    TCCR0 = (1<<WGM01) | (1<<CS01) | (1<<CS00); // CTC mode, prescaler = 64. Results in a TCNT0 increase every 4 us.
    OCR0 = 250;
    TIMSK = (1<<OCIE0); // Enable timer interrupts

    uint16_t step_length_ms = (60.0 / (float) sequencer.tempo) * 1000.0;

    uint16_t button_state = 0;
    uint16_t last_read = 0xffff;
    uint16_t button_debounce = 0xffff;
    uint8_t repeated_reads = 0;

    while (1) {
        button_debounce = 0xffff;

        for (uint8_t column = 0; column < 4; column++) {
            // Button matrix, PC7...4 are inputs
            // Active column has pull-up resistor enabled, other columns are hi-z
            SFIOR = 0;
            DDRC = DDRC & 0xf;
            PORTC = (PORTC & 0xf) | (1<<(column+4));
            for (uint8_t row = 0; row < 4; row++) {
                // Button matrix, PD7...4 are outputs
                // Active row is low output, other rows are hi-z
                DDRD = (DDRD & 0xf) | (1<<(row+4));
                PORTD = PORTD & 0xf;

                // LED matrix
                uint8_t step = (column * 4) + row;
                bool step_is_active = sequencer.channels[sequencer.current_channel].steps[step].enabled;
                if (
                    (step == sequencer.current_step && !step_is_active) ||
                    (step != sequencer.current_step && step_is_active)
                ) {
                    DDRA = (1<<column) | (1<<(row+4));
                    PORTA = (1<<column);
                }

                // Read and debounce button state
                if (((PINC & 0xf0) & (1<<(column+4))) == 0) {
                    button_debounce &= ~(1<<(column * 4 + row));
                }
            }
        }

        if (button_debounce == last_read) {
            repeated_reads++;
            if (repeated_reads == 5) {
                for (uint8_t i = 0; i < 16; i++) {
                    uint8_t last_button_state = button_state & (1<<i);
                    uint8_t current_button_state = (~button_debounce) & (1<<i);
                    if (current_button_state > last_button_state) {
                        button_pressed(&sequencer, i);
                    } else if (current_button_state < last_button_state) {
                        button_released(&sequencer, i);
                    }
                }
                button_state = ~button_debounce;
            }
        } else {
            last_read = button_debounce;
            repeated_reads = 0;
        }

        // TODO Read and debounce fé and úr buttons

        // Advance if sequencer is running
        if (sequencer.is_running) {
            ATOMIC_BLOCK(ATOMIC_FORCEON) {
                if (milliseconds > step_length_ms) {
                    sequencer.current_step = (sequencer.current_step + 1) % 16;
                    milliseconds -= step_length_ms;

                    // Update CV
                    dac_send(0, note_to_cv(sequencer.channels[0].steps[sequencer.current_step].note));
                    dac_send(1, note_to_cv(sequencer.channels[1].steps[sequencer.current_step].note));
                    // Update gates
                    gate_set(SYNTH1, sequencer.channels[0].steps[sequencer.current_step].enabled);
                    gate_set(SYNTH2, sequencer.channels[1].steps[sequencer.current_step].enabled);
                    gate_set(DRUM1, sequencer.current_step % 2);
                    // TODO Drum0-5

                    snprintf(lcd_line_one, 16, "CH %02u", sequencer.current_channel + 1);
                    snprintf(lcd_line_two, 16, "STEP %02u", sequencer.current_step + 1);
                    lcd_send_lines(lcd_line_one, lcd_line_two, PCF8574T_ADDRESS);
                }
            }
        }
    }

    return 0;
}

void rotary_encoder_init() {
    DDRD = 0;
    PORTD = 0;
    MCUCR = (1<<ISC01) | (1<<ISC00);
    GICR = (1<<INT0);
}

void button_pressed(struct sequencer_state* sequencer, uint8_t button) {
    // TODO
}

void button_released(struct sequencer_state* sequencer, uint8_t button) {
    sequencer->channels[sequencer->current_channel].steps[button].enabled ^= true;
}

uint16_t note_to_cv(uint8_t note) {
    double voltage = ((double)note / 119.0) * 5.0;
    return (voltage * 4095.0) / 5.0;
}
