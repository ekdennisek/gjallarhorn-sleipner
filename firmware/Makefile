PRG            = main
MCU_TARGET     = atmega32
OPTIMIZE       = -O2
CC             = avr-gcc
OBJCOPY        = avr-objcopy
override CFLAGS        = -Wall $(OPTIMIZE) -mmcu=$(MCU_TARGET) -D F_CPU=16000000UL

all:
	$(CC) -c $(CFLAGS) dac.c -o dac.o
	$(CC) -c $(CFLAGS) gate.c -o gate.o
	$(CC) -c $(CFLAGS) lcd.c -o lcd.o
	$(CC) -c $(CFLAGS) spi.c -o spi.o
	$(CC) -c $(CFLAGS) twi.c -o twi.o
	$(CC) -c $(CFLAGS) usart.c -o usart.o
	$(CC) -c $(CFLAGS) main.c -o main.o
	$(CC) $(CFLAGS) $(LDFLAGS) dac.o gate.o lcd.o spi.o twi.o usart.o main.o -o $(PRG).elf
	$(OBJCOPY) -j .text -j .data -O ihex $(PRG).elf $(PRG).hex

clean:
	rm -rf *.o $(PRG).elf *.hex
