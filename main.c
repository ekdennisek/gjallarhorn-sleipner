#include <avr/interrupt.h>
#include <avr/io.h>

#include "lcd.h"
#include "twi.h"
#include "usart.h"

#define PCF8574T_ADDRESS 0x27

#define ROTARY_ENCODER_MIN 0
#define ROTARY_ENCODER_MAX 255

volatile uint8_t rotary_encoder = 0;

ISR(INT0_vect) {
    uint8_t pin_b = PIND & (1<<PD3);
    if (pin_b && rotary_encoder > ROTARY_ENCODER_MIN) {
        rotary_encoder--;
    } else if (!pin_b && rotary_encoder < ROTARY_ENCODER_MAX) {
        rotary_encoder++;
    }
}

void rotary_encoder_init() {
    DDRD = 0;
    PORTD = 0;
    MCUCR = (1<<ISC01) | (1<<ISC00);
    GICR = (1<<INT0);
}

int main() {
    usart_init();
    twi_init();
    lcd_init(PCF8574T_ADDRESS);
    rotary_encoder_init();

    sei();

    lcd_turn_on(PCF8574T_ADDRESS);
    lcd_cursor_home(PCF8574T_ADDRESS);

    char rotary_encoder_value[16] = { 0 };
    while (1) {
        snprintf(rotary_encoder_value, 16, "ROT ENC: %03u", rotary_encoder);
        lcd_send_string(rotary_encoder_value, PCF8574T_ADDRESS);
    }

    return 0;
}
