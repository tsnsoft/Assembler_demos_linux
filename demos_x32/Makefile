all:
	nasm -f elf $(source).asm
	ld -m elf_i386 $(source).o -o $(source).elf
	rm $(source).o
