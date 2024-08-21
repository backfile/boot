; Utilizo la rutina de interrupcion de la BIOS para escribir en panatalla

mov ah, 0x0e

mov al, 'H'
int 0x10 ;
mov al, 'o'
int 0x10 ;
mov al, 'l'
int 0x10 ;
mov al, 'a'
int 0x10 ;

jmp $ ; Salto infinito

times 510-($-$$) db 0

dw 0xaa55
