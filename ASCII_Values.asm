.model small
.stack 100h
.code
main proc
 mov ah,2 ;char output function
 mov dl,0 ;0 on DL
 mov cx,0

 loop1:
  int 21h
  inc dl ;increament
  cmp dl,0 ;compare dl to 0 after 255 it will 
  jnz loop1;looping
  jmp exit


 exit:
  mov ah,4ch
  int 21h

main endp
 end main