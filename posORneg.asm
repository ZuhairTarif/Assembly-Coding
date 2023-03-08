.model small 

.stack 100h 

.data 
msg1 db "Positive", 0DH,0AH,24H
msg2 db "Negative", 0DH,0AH,24H

.code

main proc 
    mov ax,@DATA
    mov ds, ax   ;set up data segment
    
    mov ah,1   ;take user input
    int 21h
    sub al, '0' ;convert ASCII digit to binary
    
    cmp al,0 ;check sign of number
    jl NEGATIVE
    jg POSITIVE
    
    
    POSITIVE:
    mov ah,9
    lea dx,msg1
    int 21h
    jmp EXIT
    
    NEGATIVE:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp EXIT
    
    EXIT:
    mov ah,4ch
    int 21h
    
main endp
    
  end main