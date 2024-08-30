print_binary_to_hex:
	pusha
	mov al, bl
	shr al, 4; Guardar solo la parte alta de al, corriendo 4 numeros hacia la derecha
	movzx  si, al; Rellenando el registro si (para el index) con al + 0's hasta llenar los 16 bits
	mov al, [hexadecimal + si]; Almaceno el valor en hexadecimal en al
	mov [valor_hexa], al; Guardo el valor
	
	mov al, bl
	and al, 0x0F; Utilizo la mascara para quedarme solo con los valores de la parte baja del registro
	movzx si, al
	mov al, [hexadecimal + si]
	mov [valor_hexa + 1], al
	mov bx, valor_hexa; Guardo el puntero al string en hexadecimal en el registro bx (parametro de la funcion print)
	call print_function; Llamo a la funcion print y muestro el valor hexadecimal en pantalla
	popa
	ret; Retorno
	
; Datos
hexadecimal: db '0123456789ABCDEF'
valor_hexa: db '00',0
