.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h 
    cmp al,'1'
    je onethree
    cmp al,'3'
    je onethree

    cmp al,'2'
    je twofour
    cmp al,'4'
    je twofour


  onethree:
  mov dl, 'o'
  mov ah,2
  int 21h
  jmp exit


  twofour:
  mov dl, 'e'
  mov ah,2
  int 21h
  jmp exit

  exit:
  mov ah,4ch
  int 21h
  
 main endp
end main