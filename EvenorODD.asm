.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h 
    cmp al,'1'
    je if
    cmp al,'3'
    je if

    cmp al,'2'
    je else
    cmp al,'4'
    je else


  if:
  mov dl, 'o'
  mov ah,2
  int 21h
  jmp exit


  else:
  mov dl, 'e'
  mov ah,2
  int 21h
  jmp exit

  exit:
  mov ah,4ch
  int 21h
  
 main endp
end main