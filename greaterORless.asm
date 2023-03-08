.model small 

.stack 100h 

.data 
msg1 db "Greater than 5", 0DH,0AH,24H
msg2 db "Less than 5", 0DH,0AH,24H
msg3 db "Equal to 5", 0DH,0AH,24H
input db "Enter a number: ",0DH,0AH,24H 

.code

main proc 
    mov ax,@DATA
    mov ds, ax   ;set up data segment
    
    mov ah,9
    lea dx,input
    int 21h
    mov ah,1   ;take user input
    int 21h
    sub al, '0' ;convert ASCII digit to binary
    
    cmp al,5 ;check sign of number
    jl Less
    jg Greater
    je Equal
    
    
    Greater:
    mov ah,9
    lea dx,msg1
    int 21h
    jmp EXIT
    
    Less:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp EXIT 
    
    Equal:
    mov ah,9
    lea dx,msg3
    int 21h
    jmp EXIT 
    
    
    EXIT:
    mov ah,4ch
    int 21h
    
main endp
    
  end main