[org 0x7c00] ; Decirle al ensamblador que aqui comienza nuestro codigo

mov bp, 0x1000; Colocamos el stack aqui
mov sp, bp;

mov bx, HELLO_MSG
call print_function

mov bx, BYE_MSG
call print_function

jmp $

%include "print_function.asm"	
	
HELLO_MSG: db 'Hola mundo', 0
	
BYE_MSG: db 'Adios cuidate!', 0
	
times 510-($-$$) db 0
dw 0xaa55
