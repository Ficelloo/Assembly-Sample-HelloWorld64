bits 64

STDOUT: equ 1

section .data
    helloworld:
        db 'Hello world!', 10 ; 10 = ASCII char
    helloworld_lenght: equ $-helloworld

section .text
    global _start ; LD entrypoint
    _start:
        mov rax, 1 ; GNU/Linux write
        mov rdi, STDOUT ; stdout
        mov rsi, helloworld
        mov rdx, helloworld_lenght
        syscall ; call kernel

        mov rax, 60 ; GNU/Linux exit
        xor rdi, rdi ; faster than mov rdi, 0 (exit code)
        syscall ; call kernel
