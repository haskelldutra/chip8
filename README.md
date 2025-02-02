# Building

## Installing SDL2

### Debian / Ubuntu

```sh
sudo apt install libsdl2-dev
```

### FreeBSD

...


# Hardware specifications

## The memory layout

The chip8 has 4096 bytes of memory.

0x00: Start of chip8 ram

0x200: Start of chip8 programs

0xFFF: End of memory

The virtual hardware has a stack that is an array of 16 bit used to store the address. The hardware allows for up to 16 levels of nested subroutines.

The stack is not part of main memory.


<hr>

## The registers

From V0 to VE.

* The hardware has 16 8bit data registers, these registers store general data.

* Each 8-bit registers can hold 1 byte of information.

* There is a register named "I" that used to store memory address.

* The register PC (Program Counter) which points to the address of the current instruction being executed.

* The Stack Pointer register that points to a location in the stack.

<hr>

## Sound timer

Sound timer and delay timer, these are 8bits and when above zero decrement at a rate of 60hz.

* The hardware play a beep when the sound time is not zero.

* Decrements at a rate of 60hz.

* When zero sound no logger plays.

<hr>

## The display

* Display size is 64x32 pixels.

* It's a monochrome display.

<hr>

## The keyboard

Keyboard has 16 keys from 0x00 to 0xF. You can represent this in your emulator as a array with 16 bytes.

<hr>

## References

* http://devernay.free.fr/hacks/chip8/C8TECH10.HTM


