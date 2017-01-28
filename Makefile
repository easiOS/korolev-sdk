CC=gcc
CFLAGS=-std=gnu99 -Os -nostdlib -m32 -march=i386 -ffreestanding -Wl,--nmagic,--script=linker.ld
