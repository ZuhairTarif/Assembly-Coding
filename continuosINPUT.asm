mov dx,0
mov ah,1
int 21h
while:
cmp al,'$'  
je end_while
inc dx
int 21h
jmp while
end_while:
hlt
