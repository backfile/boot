; Utilizo la rutina de interrupcion de la BIOS para escribir en pantalla

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

times 510-($-$$) db 0 ;Le indico a la BIOS que quiero cargar este segmento en memoria

dw 0xaa55
