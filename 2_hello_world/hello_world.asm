global _start

section .data
    msg db "Hello, World", 0x0a
    len equ $ - msg

section.text
_start:

    mov eax, 4      ; system call for sys_write
    mov ebx, 1      ; file descriptor -- stdout
    mov ecx, msg 
    mov edx, len
    int 0x80        ; interrupt -- perform system call
    
    mov eax, 1      ; sys_exit
    mov ebx, 0      ; exit status
    int 0x80

