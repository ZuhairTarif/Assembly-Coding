.model small
.stack 100h
.data
msg db 0ah,0dh,"Welcome to My Calculator!!$"
msg1 db 0ah,0dh,"Please User Enter A Hex Digit (A-F): $"
msg2 db 0ah,0dh,"In Decimal it is: $"
msg3 db 0ah,0dh,"Thank You for using my Calculator",'$',0dh,0ah
msg4 db 0ah,0dh,"Have a good day $"
.code
main proc
    mov ax,@data
    mov ds,ax
    lea dx,msg
    mov ah,9
    int 21h
    lea dx,msg1
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    jmp task
    
    task:
    cmp bl,'9';if greater jmp to hex
    ja hex
    jb num
    je num
    hex:
    lea dx,msg2 
    mov ah,9
    int 21h
    mov dl,49d ;ASCII value of 1
    mov ah,2
    int 21h

    sub bl,17d ;17 lesser value what was given
    mov dl,bl
    mov ah,2
    int 21h
    jmp exit
    num:
   
    lea dx,msg2 
    mov ah,9
    int 21h 
    mov dl,bl
    mov ah,2
    int 21h
    exit:  
    lea dx,msg3 
    mov ah,9
    int 21h 
    lea dx,msg4 
    mov ah,9
    int 21h
    
     