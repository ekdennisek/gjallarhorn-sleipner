#include <avr/io.h>
#include <string.h>

#include "usart.h"

void usart_init() {
    UBRRH = 0;
    UBRRL = (F_CPU / (16UL * BAUD) - 1);
    UCSRB = (1<<TXEN);
    UCSRC = (1<<URSEL)|(1<<USBS)|(3<<UCSZ0);
}

void usart_send(char* string) {
    for (uint8_t i = 0; i < strlen(string); i++) {
        while (!(UCSRA & (1<<UDRE)));
        UDR = string[i];
    }
    while (!(UCSRA & (1<<UDRE)));
    UDR = '\r';
    while (!(UCSRA & (1<<UDRE)));
    UDR = '\n';
}
