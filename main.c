#include <avr/interrupt.h>
#include <avr/io.h>
#include <util/atomic.h>
#include <util/delay.h>

#include "lcd.h"
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

struct channel {
    enum channel_type type;
    uint8_t steps[16];
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

int main() {
    usart_init();
    twi_init();
    lcd_init(PCF8574T_ADDRESS);
    rotary_encoder_init();

    sei();

    lcd_turn_on(PCF8574T_ADDRESS);
    lcd_cursor_home(PCF8574T_ADDRESS);

    struct sequencer_state sequencer = {
        .tempo = 120,
        .is_running = false,
        .current_step = 0,
        .current_channel = 0,
        .channels = {
            (struct channel) { .type = synth, .steps = { 0 } },
            (struct channel) { .type = synth, .steps = { 0 } },
            (struct channel) { .type = drum, .steps = { 0 } },
            (struct channel) { .type = drum, .steps = { 0 } },
            (struct channel) { .type = drum, .steps = { 0 } },
            (struct channel) { .type = drum, .steps = { 0 } },
            (struct channel) { .type = drum, .steps = { 0 } },
            (struct channel) { .type = drum, .steps = { 0 } },
        },
    };

    // Setup test state
    sequencer.is_running = true;
    sequencer.channels[0].steps[0] = 0xff;
    sequencer.channels[0].steps[2] = 0xff;
    sequencer.channels[0].steps[4] = 0xff;
    sequencer.channels[0].steps[8] = 0xff;
    sequencer.channels[0].steps[12] = 0xff;

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
                bool step_is_active = sequencer.channels[sequencer.current_channel].steps[step] > 0;
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
    sequencer->channels[sequencer->current_channel].steps[button] ^= 0xff;
}
