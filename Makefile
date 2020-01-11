all:
	nasm -f elf32 10.asm -o 10.o
	gcc -m32 10.o -o 10
