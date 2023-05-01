xor ax,ax ;clears ax
mov cx,0011b  ;random value
top:
rol bx,1 ;rotate left by 1
jnc next ;if leftmost carry bit is 0
inc ax ;if leftmost carry bit is 1
next:
loop top