.model small

org 100h

.data 
 msg:    db      "Hello World", 0Dh,0Ah, 24h

.code
main proc

Label:  mov     dx, msg  ; load offset of msg into dx.
        mov     ah, 09h  ; print function is 9.
        int     21h      ; do it!
        
   jmp Label ; for endless printing
   
main endp
