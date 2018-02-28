CC = gcc
CFLAGS = -O2 -Wall

z80as:	as0.o as1.o as2.o as3.o as4.o as5.o as6.o
	$(CC) -o z80as.x86 as0.o as1.o as2.o as3.o as4.o as5.o as6.o

install:
	strip z80as.x86
	cp z80as.x86 ${HOME}/bin/z80as

clean:
	rm -f z80as.x86 *.o
