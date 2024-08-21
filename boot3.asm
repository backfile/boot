[org 0x7c00]

mov ah, 0x0e ; Mostrar caracter en pantalla

mov bp, 0x8000 ; La base del stack un poco arriba donde la BIOS carga nuestro boot sector.

mov sp, bp; 

push 'A'
push 'B'
push 'C'

pop bx ; Solo se pueden sacar 16 bits, luego utilizar bl para guardar los 8 bits del caracter
mov al, bl
int 0x10

pop bx ; Quitar el proximo valor
mov al, bl
int 0x10

pop bx
mov al, bl
int 0x10

jmp $; Salto infinito

times 510-($-$$) db 0
dw 0xaa55
