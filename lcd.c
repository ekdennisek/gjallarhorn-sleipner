#include <stdbool.h>
#include <string.h>
#include <util/delay.h>

#include "lcd.h"
#include "twi.h"
#include "usart.h"

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
