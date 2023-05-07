.model small
.stack 100h
.data
buffer db 10 dup ('$')
n dw 4
.code
main proc 
    
    
mov ax , @data
mov ds ,ax
mov ax , n
mov bx , ax
mov cx , ax
dec cx

top:
mul cx
loop top

mov dx,ax
mov ah,2

int 21h

mov ah,4ch
int 21h

main endp
end main
