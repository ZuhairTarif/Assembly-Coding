.data
x1 dw 0001b
x2 dw 1000b
sum dw 2 dup<?>


mov ax,@data
mov ds,ax

mov ax,x1
add ax,x2
mov dx,00
adc dx,00

mov sum,ax
mov sum [2],dx 