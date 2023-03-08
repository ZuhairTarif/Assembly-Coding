.model small

.stack 100h 


.code 
 main proc
    
    
    
    mov ah,1
    int 21h
    mov cx,50 ;counter 50
    mov ah,2  ;char output
    mov dl,al ; move al to dl
    
    
    
   print:
   int 21h
   dec cx
   jnz print
   
   
   
 main endp
 
end main
   
    
    