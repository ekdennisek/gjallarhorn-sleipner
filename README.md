# Gjallarhorn Sleipner

## Introduction

**This code is currently under development, and is not ready to be used yet.**
See the [TODO section](#todo)

The Gjallarhorn Sleipner is an open source Eurorack compatible step sequencer. Powered by an Atmel AVR ATmega32
running at 16 MHz, it features 2 CV/gate channels and 6 gate only channels for controlling percussion or simliar.

## Programming the MCU

The firmware may be built by simply running

    make

Once the firmware `main.hex` is built, upload it to the MCU and set the correct fuse bits. The example below uses
avrdude on a Raspberry Pi to program the MCU (make sure that your `avrdude.conf` is setup correctly according to the
pins being used)

    avrdude -c linuxgpio -p atmega32 -v -U flash:w:main.hex
    avrdude -c linuxgpio -p atmega32 -v -U hfuse:w:0xC9:m
    avrdude -c linuxgpio -p atmega32 -v -U lfuse:w:0xEF:m

Please note that you will have to connect a 16 MHz crystal to the ATmega32 in order to use it once the fuses have been
programmed.

## Technical specs

TODO

## Usage

TODO

## TODO

The list below is far from an exhaustive list of what's coming, but the main features for a 1.0.0 version should all be
listed.

* Read the input state of the two special buttons, fé and úr
* Write a usage and a technical specs section
* Allow a user to change the channel, tempo and note of the CV channels
* Allow a user to set gate duration as a percentage of a step

## Changelog

TODO once version 1.0.0 has been achieved.
