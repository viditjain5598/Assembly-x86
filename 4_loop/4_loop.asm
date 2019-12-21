global _start

section .text
_start:
    mov ebx, 1
    mov ecx, 9
loop:
    add ebx, ebx
    dec ecx
    cmp ecx, 0
    jg loop
    mov eax, 1
    int 0x80

