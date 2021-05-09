#include <avr/io.h>

#include "twi.h"
#include "usart.h"

#define F_SCL 100000UL

void twi_init() {
    TWBR = ((F_CPU / F_SCL) - 16) / 2; // Configure TWI bit rate
    TWSR = 0; // Configure TWI prescaler
    TWCR = (1<<TWEN);
}

void twi_send_byte(uint8_t byte, uint8_t address) {
    char string[50] = { 0 };
    // Send START message and wait for it to be sent
    TWCR = (1<<TWINT) | (1<<TWSTA) | (1<<TWEN);
    while (!(TWCR & (1<<TWINT)));
    if ((TWSR & 0b11111000) != 0x08) {
        snprintf(string, 50, "twi_send_byte:f1 --- TWSR = 0x%x", TWSR);
        usart_send(string);
    }

    // Send address packet and wait for it to be sent
    TWDR = (address<<1);
    TWCR = (1<<TWINT) | (1<<TWEN);
    while (!(TWCR & (1<<TWINT)));
    if ((TWSR & 0b11111000) != 0x18) {
        snprintf(string, 50, "twi_send_byte:f2 --- TWSR = 0x%x", TWSR);
        usart_send(string);
    }

    // Send data packet and wait for it to be sent
    TWDR = byte;
    TWCR = (1<<TWINT) | (1<<TWEN);
    while (!(TWCR & (1<<TWINT)));
    if ((TWSR & 0b11111000) != 0x28) {
        snprintf(string, 50, "twi_send_byte:f3 --- TWSR = 0x%x", TWSR);
        usart_send(string);
    }

    // Send STOP message
    TWCR = (1<<TWINT) | (1<<TWSTO) | (1<<TWEN);
}
