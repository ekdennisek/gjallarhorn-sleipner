#include "spi.h"

void spi_init() {
    DDRB =
        (1<<PB7) | // SCK
        (1<<PB5) | // MOSI
        (1<<PB4) | // Configure SS as output to avoid inteference from floating reads
        (1<<PB0);  // Slave SS
    PORTB = (1<<PB0);
    SPCR = (1<<SPE) | (1<<MSTR);
    SPSR = (1<<SPI2X);
}

void spi_send_bytes(uint8_t* bytes, uint8_t num_bytes) {
    PORTB &= ~(1<<PB0);
    for (uint8_t i = 0; i < num_bytes; i++) {
        SPDR = bytes[i];
        while (!(SPSR & (1<<SPIF)));
    }
    PORTB |= (1<<PB0);
}
