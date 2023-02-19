.Model Small 
.stack 100h
.data
dt1 db 0Ah
dt2 db 0Fh


.code    
        MAIN PROC
            
    mov bx,@data
    mov ds,bx
    mov bl,dt1
    mov bh,dt2
   sub bl,bh 
    mov ax,0
    mov ah,bh
    
    mov ah,2h
    int 21h 


 end
