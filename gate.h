#include <stdbool.h>
#include <stdint.h>

#define DRUM1 0
#define DRUM2 1
#define DRUM3 2
#define DRUM4 3
#define DRUM5 4
#define DRUM6 5
#define SYNTH1 6
#define SYNTH2 7

void gate_init();
void gate_set(uint8_t gate, bool on);
