global _start

section .data
    msg db "Yellow"

section .text
_start:
    mov [msg], byte 'H'
    mov [msg+5], byte '!'
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80
