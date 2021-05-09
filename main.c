#define F_CPU 16000000UL
#define F_SCL 100000UL

#define __AVR_ATmega32__

#include <avr/io.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <util/delay.h>
#include <util/twi.h>

#define LCD_RS 0x0
#define LCD_RW 0x1
#define LCD_E 0x2
#define LCD_BL 0x3
#define LCD_D4 0x4
#define LCD_D5 0x5
#define LCD_D6 0x6
#define LCD_D7 0x7

#define PCF8574T_ADDRESS 0x27

void usart_init() {
    UBRRH = 0;
    UBRRL = 0xf9; // 249 (4000 baud at 16 MHz F_CPU)
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

void twi_init() {
    TWBR = ((F_CPU / F_SCL) - 16) / 2; // Configure TWI bit rate
    // TWBR = 72;
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

void lcd_pulse_enable(uint8_t byte, uint8_t twi_address) {
    twi_send_byte(byte | (1<<LCD_E), twi_address);
    _delay_us(1);
    twi_send_byte(byte & ~(1<<LCD_E), twi_address);
    _delay_us(50);
}

void lcd_send_nibble(uint8_t nibble, uint8_t twi_address, bool register_select, bool read_write) {
    uint8_t byte = (nibble<<4);

    if (register_select) {
        byte |= (register_select<<LCD_RS);
    } else {
        byte &= ~(register_select<<LCD_RS);
    }

    if (read_write) {
        byte |= (read_write<<LCD_RW);
    } else {
        byte &= ~(read_write<<LCD_RW);
    }

    byte |= (1<<LCD_BL);

    twi_send_byte(byte, twi_address);
    lcd_pulse_enable(byte, twi_address);
}

// void lcd_send_byte(uint8_t byte, uint8_t address, bool register_select, bool read_write) {
//     lcd_send_nibble((byte>>4), address, register_select, read_write, enable);
//     lcd_send_nibble(byte & 0b00001111, address, register_select, read_write, enable);
// }

void lcd_init(uint8_t twi_address) {
    _delay_ms(50);

    // Function set, 8-bit mode #1
    usart_send("Function set, 8-bit mode #1");
    lcd_send_nibble(0b0011, twi_address, false, false);
    _delay_ms(10);

    // Function set, 8-bit mode #2
    usart_send("Function set, 8-bit mode #2");
    lcd_send_nibble(0b0011, twi_address, false, false);
    _delay_ms(1);

    // Function set, 8-bit mode #3
    usart_send("Function set, 8-bit mode #3");
    lcd_send_nibble(0b0011, twi_address, false, false);

    // Function set, 4-bit mode
    usart_send("Function set, 4-bit mode");
    lcd_send_nibble(0b0010, twi_address, false, false);

    // Function set, 4-bit mode, 2 lines, 5x8 pixels per character
    usart_send("Function set, 4-bit mode, 2 lines, 5x8 pixels per character");
    lcd_send_nibble(0b0010, twi_address, false, false);
    lcd_send_nibble(0b1000, twi_address, false, false);

    // Display off
    usart_send("Display off");
    lcd_send_nibble(0b0000, twi_address, false, false);
    lcd_send_nibble(0b1000, twi_address, false, false);

    // Display clear
    usart_send("Display clear");
    lcd_send_nibble(0b0000, twi_address, false, false);
    lcd_send_nibble(0b0001, twi_address, false, false);

    // Entry mode set
    usart_send("Entry mode set");
    lcd_send_nibble(0b0000, twi_address, false, false);
    lcd_send_nibble(0b0110, twi_address, false, false);
}

void lcd_turn_on(uint8_t twi_address) {
    lcd_send_nibble(0b0000, twi_address, false, false);
    lcd_send_nibble(0b1111, twi_address, false, false);
}

void lcd_cursor_home(uint8_t twi_address) {
    lcd_send_nibble(0b0000, twi_address, false, false);
    lcd_send_nibble(0b0010, twi_address, false, false);
}

void lcd_cursor_set(uint8_t column, uint8_t row, uint8_t twi_address) {
    uint8_t row_offsets[] = { 0x0, 0x40 };
    lcd_send_nibble(0b1000 | ((column + row_offsets[row])>>4), twi_address, false, false);
    lcd_send_nibble(column + row_offsets[row], twi_address, false, false);
}

void lcd_send_character(char character, uint8_t twi_address) {
    lcd_send_nibble((character>>4), twi_address, true, false);
    lcd_send_nibble(character & 0b1111, twi_address, true, false);
}

void lcd_send_string(char* string, uint8_t twi_address) {
    lcd_cursor_home(twi_address);
    for (uint8_t i = 0; i < strlen(string); i++) {
        lcd_send_character(string[i], twi_address);
    }
}

void lcd_send_lines(char* line_one, char* line_two, uint8_t twi_address) {
    lcd_cursor_home(twi_address);
    for (uint8_t i = 0; i < strlen(line_one); i++) {
        lcd_send_character(line_one[i], twi_address);
    }
    lcd_cursor_set(0, 1, twi_address);
    for (uint8_t i = 0; i < strlen(line_two); i++) {
        lcd_send_character(line_two[i], twi_address);
    }
}

int main() {
    // Configure debug LEDs
    DDRB = 0xff; // Configure all I/O pins on port B as outputs
    PORTB = 0xff;

    usart_init();
    twi_init();
    lcd_init(PCF8574T_ADDRESS);

    lcd_turn_on(PCF8574T_ADDRESS);
    lcd_cursor_home(PCF8574T_ADDRESS);

    lcd_send_lines("Hello,", "world!", PCF8574T_ADDRESS);

    while (1) {
        // Blink all outputs on port B
        PORTB = ~PORTB;
        _delay_ms(500);
    }

    return 0;
}
