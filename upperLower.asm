.model small
.stack 100h

.data
prompt db 'Enter a character:$'
msg_upper db 'Converted to upper case:$'
msg_lower db 'Converted to lower case:$'
msg_not_letter db 'Input is not a letter.$'
input_char db ?,'$' ;? means not to initialize memory

.code 
main proc
    ;print prompt
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,prompt
    
    
    int 21h
    
    
    ;read input character
    mov ah,1
    int 21h
    
    mov bl,al ;save input character
    MOV dl, 10
    MOV ah, 02h
    INT 21h
    MOV dl, 13
    MOV ah, 02h
    INT 21h
    
    
    
    
    ;check if input is a letter
    cmp bl,'A'
    jb not_letter
    cmp bl,'Z'
    jbe upper_case
    cmp bl,'a'
    jb not_letter
    cmp bl,'z'
    ja not_letter
    
    
    
    lower_case:
    ;convert to upper case
    and bl,11011111b ;returns 1
    ;print result
    mov ah,9
    lea dx, msg_upper
    int 21h
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit_program
    
    upper_case:
    ;convert to lower case
    or bl,00100000b  ;return 0
    ;print result
    mov ah,9
    lea dx,msg_lower
    int 21h
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit_program
    
    not_letter:
    ;print error message
    mov ah,9
    lea dx,msg_not_letter
    int 21h
    
    exit_program:
    ;exit program
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    
    
    
     