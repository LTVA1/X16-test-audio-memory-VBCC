SRC=$(wildcard *.c)
SRC_ASM=$(wildcard *.asm)

all: test.prg

test.prg: $(SRC)
	vc +x16r -O4 $(SRC) $(SRC_ASM) -o test.prg
	rm -f *.o
	x16emu -prg $(CURDIR)/test.prg -run -quality nearest -scale 2
	
clean:
	rm -f *.prg *.o *.BIN
