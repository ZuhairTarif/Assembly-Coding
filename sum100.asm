.model small
.stack 100h
.code
main proc
    mov cx,19 ;number of loop
    mov ax,0  ;store the addition result
    mov bx,100;To 100 Addition
  loop1:
  add ax,bx 
  sub bx,5  ;5 difference
  loop loop1
  jmp exit
  
  
  exit:
  mov ah,4ch
  int 21h
  
  main endp
end main