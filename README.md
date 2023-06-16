# X16-test-audio-memory-VBCC
 Simple test program: writing to OPM and VERA PSG registers, vblank interrupt. Version that uses VBCC (better than cc65 but a fucking torture to set up). It (makefile) assumes you have `vbcc` and X16 emulator (`x16emu.exe`) in your PATH. It automatically calls the emulator and launches the PRG file.

When you press any key program actually does some kind of reboot, so you go to BASIC screen with logo and stuff and can do whatever you want, like load new program etc.

Later, maybe in July, I will add another example repo with custom linker config for banked RAM support, maybe even make the compiler to properly use far-pointers out of the box...

The Windows version VBCC compiler is added to the repo. It's the newest version rn which support binary literals (when you write `0b1101010101` in source code). Shame that 20 years old compiler got this kinda standard thing very recently.

If anybody has VBCC C64 REU libs, please tell me, I hope they will be useful for making a better X16 target support (aforementioned banked RAM, maybe cartridge ROM/RAM, etc.)