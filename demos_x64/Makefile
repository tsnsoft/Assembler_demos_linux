all:
	nasm -f elf64 $(source).asm
	ld -m elf_x86_64 $(source).o -o $(source).elf
	rm $(source).o
