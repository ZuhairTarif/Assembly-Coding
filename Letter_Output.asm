.model small
.stack 100h
.data 
msg1 db "Welcome User!!$"
msg2 db 0dh,0ah,"Enter Letter 1: $"
msg3 db 0dh,0ah,"Enter Letter 2: $"
msg4 db 0dh,0ah,"Enter Letter 3: $"
msg5 db 0dh,0ah,"Output: ",0dh,0ah,'$'
l1 db '$'
l2 db '$'
l3 db '$'
.code 
main proc
    mov ax,@data
    mov ds,ax ;initialize ds
    ;display msg1
    lea dx,msg1
    mov ah,9
    int 21h
    ;display msg2
    lea dx,msg2
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov l1,al ;store the value on l1
    ;display msg3
    lea dx,msg3
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov l2,al ;store the value on l2
    ;display msg4
    lea dx,msg4
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov l3,al ;store the value on l3
    call task
    
    task:
    ;for output
    lea dx,msg5
    mov ah,9
    int 21h
    
    ;output letter1
    mov dl,l1
    mov ah,2
    int 21h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    ;output letter2
    mov dl,l2
    mov ah,2
    int 21h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    ;output letter3
    mov dl,l3
    mov ah,2
    int 21h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    

main endp

end main
    
    