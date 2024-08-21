[org 0x7c00] ;Direccion de memoria en donde la BIOS carga nuestro codigo

character: db 'X' ; La etiqueta guarda el offset con respecto a 0x7c00

mov ah, 0x0e
mov al, [character]
int 0x10

jmp $	

; Llenando los espacios con 0 y el numero magico de la BIOS

times 510-($-$$) db 0
dw 0xaa55
