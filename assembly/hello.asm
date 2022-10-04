global main

section .data
	msg db "Hello, x86", 0x0a	; db(data byte), dw(data word 16 bit), dd(data double 32bit), 0x0a is 10 which is new ascii for line \n
	len equ $ - msg			; length of string(bytes to write)

section .text
main: 
	mov eax, 4	; sys_write system call
	mov ebx, 1	; stdout file descriptor
	mov ecx, msg	; bytes to write
	mov edx, len	; number of bytes to write
	int 0x80	; interrupt for system call (system call number in register eax)
	mov eax, 1	; sys_exit system call 
	mov ebx, 0	; exit status is 0
	int 0x80	; interrupt for system call

