#include "dac.h"
#include "spi.h"

void dac_send(uint8_t dac_channel, uint16_t value) {
    uint16_t word =
        ((dac_channel ? 1 : 0)<<15) |
        (1<<13) | // 1x output gain
        (1<<12) | // Vout enabled
        (value & 0xfff);
    uint8_t bytes[2] = { ((word & 0xff00)>>8), (word & 0xff) };
    spi_send_bytes(bytes, 2);
}
