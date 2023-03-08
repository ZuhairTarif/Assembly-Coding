mov ah,1
repeat:
int 21h
cmp al, ' '
jne repeat
end_while:
