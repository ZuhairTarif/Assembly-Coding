.model small
.stack 100h
.data
msg1 db "Type a Char: $"
msg2 db 0dh,0ah,"ASCII Code in Binary is: $"
msg3 db 0dh,0ah,"Number of 1 bits: $"
.code
main proc
    mov ax,@data
    mov ds,ax ;initialize ds
    lea dx,msg1
    mov ah,9
    int 21h
    mov ah,1 ;read a char
    int 21h
    xor bx,bx ;clear bx
    mov bl,al
    lea dx,msg2
    mov ah,9
    int 21h
    xor bh,bh ;clear bh
    mov cx,8  ;initialize loop counter
    mov ah,2
    call task ;calling procedure
    
    
    task:
    rol bl,1 ;rotate left
    jnc one  ;jump if cf=0
    inc bh
    mov dl,31h ;set dl=0
    jmp print
    
    one:
    mov dl,31h
    dec dl
   
    print:
    int 21h
    loop task
    
    
    
    lea dx,msg3
    mov ah,9
    int 21h
    
    or bh,'0' ;convert the counter to ascii
    mov dl,bh ;set dl to counter value
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
    
 end main 
    
    
     
   
    
    
    