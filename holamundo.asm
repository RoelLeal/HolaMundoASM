section .data
msg db "Hola Mundo!", 0xa, 0xd
len equ $ - msg
section .text
    global _start
_start:

mov eax, 4 ; Escribe los datos
mov ebx, 1 ; Imprime en pantalla
mov ecx, msg ; Lo que vamos a imprimir
mov edx, len ; Longitud de memoria usada
int 0x80

mov eax, 1
int 0x80