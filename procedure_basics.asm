.model small
.data
msg1 db "Hi I am from Main procedure $"
msg2 db "Hi I am from Second procedure $"
msg3 db "Hi I am from Third procedure $"
newline db 10,13,'$' 
.code

main proc
    
    MOV AX, @DATA       ; initialize ds
    MOV DS, AX
    mov ah,9h  
     
    lea dx,msg1
    int 21h
    lea dx,newline
    int 21h 
    call second
    call third
    

    main endp

second proc
    mov ah,9h
    lea dx,msg2
    int 21h
    lea dx,newline
    int 21h
    ret


    second endp


third proc
    mov ah,9h
    lea dx,msg3
    int 21h
    lea dx,newline
    int 21h
    jmp exit
    
    third endp
            
            
    exit:
    mov ah,4ch
    int 21h        
            
end main