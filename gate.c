#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>

#include "gate.h"

void gate_init() {
    DDRB |= (1<<PB1) | (1<<PB2) | (1<<PB3) | (1<<PB4) | (1<<PB6);
    PORTB |= (1<<PB1) | (1<<PB2) | (1<<PB3) | (1<<PB4);
    PORTB &= ~(1<<PB6);
    for (uint8_t i = 0; i < 7; i++) {
        gate_set(i, false);
    }
}

// TODO Determine minimum delay (or remove it all together if not needed)
void gate_set(uint8_t gate, bool on) {
    PORTB = (PORTB & 0xe3) | ((gate & 0x7)<<2); // Set the address
    _delay_ms(25);
    PORTB = (PORTB & 0xfd) | ((!on)<<1); // Set the data bit (inverted because of the inverted transistor amplifiers)
    _delay_ms(25);
    PORTB &= 0xbf; // Enable pin low (active)
    _delay_ms(25);
    PORTB |= 0x40; // Enable pin high
    _delay_ms(25);
}
