PRG            = main
MCU_TARGET     = atmega32
OPTIMIZE       = -O2

# You should not have to change anything below here.

CC             = avr-gcc

# Override is only needed by avr-lib build system.

override CFLAGS        = -Wall $(OPTIMIZE) -mmcu=$(MCU_TARGET) -D F_CPU=16000000UL

OBJCOPY        = avr-objcopy
OBJDUMP        = avr-objdump

all:
	$(CC) -c $(CFLAGS) lcd.c -o lcd.o
	$(CC) -c $(CFLAGS) twi.c -o twi.o
	$(CC) -c $(CFLAGS) usart.c -o usart.o
	$(CC) -c $(CFLAGS) main.c -o main.o
	$(CC) $(CFLAGS) $(LDFLAGS) lcd.o twi.o usart.o main.o -o $(PRG).elf
	$(OBJCOPY) -j .text -j .data -O ihex $(PRG).elf $(PRG).hex

clean:
	rm -rf *.o $(PRG).elf *.hex

hex: $(PRG).hex

%.hex: %.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@
