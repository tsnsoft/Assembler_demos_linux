global  _start

section .data

timespec:

 tv_sec dq 0
 tv_nsec dq 30000000 ; 30 ms

section .text

_start:
        mov  al, 0edh
        out  60h, al

        mov rax, 35
        mov rdi, timespec
	xor rsi, rsi
        syscall

        mov al, 7
        out 60h, al

        mov eax, 60 
        xor rdi, rdi
        syscall
