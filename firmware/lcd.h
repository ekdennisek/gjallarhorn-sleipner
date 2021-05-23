#include <stdbool.h>
#include <stdio.h>

#define LCD_RS 0x0
#define LCD_RW 0x1
#define LCD_E 0x2
#define LCD_BL 0x3
#define LCD_D4 0x4
#define LCD_D5 0x5
#define LCD_D6 0x6
#define LCD_D7 0x7

void lcd_pulse_enable(uint8_t byte, uint8_t twi_address);
void lcd_send_nibble(uint8_t nibble, uint8_t twi_address, bool register_select, bool read_write);
void lcd_init(uint8_t twi_address);
void lcd_turn_on(uint8_t twi_address);
void lcd_cursor_home(uint8_t twi_address);
void lcd_cursor_set(uint8_t column, uint8_t row, uint8_t twi_address);
void lcd_send_character(char character, uint8_t twi_address);
void lcd_send_string(char* string, uint8_t twi_address);
void lcd_send_lines(char* line_one, char* line_two, uint8_t twi_address);
