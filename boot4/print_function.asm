print_function: 
	pusha ;Guardar todos los registros en la pila
.loop:
	mov al, [bx] ;Cargar el caracter apuntado por bx (puntero al string)
	cmp al, 0
	je .finalizar
	call print_char
	inc bx ;Incrementar bx (apuntador a siguiente caracter)
	jmp .loop
.finalizar:
	mov al, 10 ; Salto de linea
	call print_char
	mov al, 13
	call print_char
	popa ; Recuperar todos los registros
	ret ;Volver a la direccion dond fue llamada la funcion


print_char:
	mov ah, 0x0e
	int 0x10
	ret
