mov cx, 50   ; limit for the Fibonacci series
mov ax, 0    ; initialize first number
mov bx, 1    ; initialize second number
mov dl, 0    ; initialize counter

fibonacci:
    cmp dl, cl    ; check if we've reached the limit
    jge done

    ; print the current Fibonacci number
    mov ah, 2
    mov dl, bl
    int 21h

    ; compute next Fibonacci number
    add bx, ax
    mov ax, bx
    inc dl
    
    

    ; jump back to the start of the loop
    loop fibonacci

done:
    
    ; exit the program
    mov ah, 4Ch
    int 21h
