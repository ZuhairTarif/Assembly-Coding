.model small

.stack 100h

.data 

password db "mypassword" , 0DH,0AH,24H
input db "Enter your password: ",0DH,0AH,24H
msg1 db "Password Matched" , 0DH,0AH,24H
msg2 db "Password Not Matched" , 0DH,0AH,24H


.code 
main proc
    
    mov ax,@DATA
    mov ds,ax
    
    
    mov ah,9
    lea dx, input
    int 21h
    mov ah,10
    int 21h 
    
 
    
    cmp al,password
    je matched
    jne notmatched
    
    matched: 
    mov ah,9
    lea dx, msg1
    int 21h
    jmp exit
    
    notmatched: 
    mov ah,9
    lea dx, msg2
    int 21h
    jmp exit
    
    
    exit:
    
   mov ah,4ch
   
   
main endp
end main
    
    
    
    
    

 