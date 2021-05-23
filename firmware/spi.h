#include <avr/io.h>

void spi_init();
void spi_send_bytes(uint8_t* bytes, uint8_t num_bytes);
