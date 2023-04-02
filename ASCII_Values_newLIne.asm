.model small
.stack 100h
.code
main proc
    mov cx,0
    mov bx,0
    
   step1:
    
    mov cx,10
    
   step2:
    mov ah,2
    mov dl,bl
    int 21h
    
    inc bl
    cmp bl,255
    je exit
    
    loop step2
    
    
    mov ah,2   ;for new line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    inc bl
    mov cx,bx  ;compare 10 and bx value
    loop step1
    
   exit:
    mov ah,4ch
    int 21h
    
main endp
 end main