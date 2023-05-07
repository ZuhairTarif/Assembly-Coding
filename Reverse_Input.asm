;Reverse Input
.model small
.stack 100h
.data
.code
main proc
    mov ah,2
    mov dl,'?'
    int 21h
    
    
    xor cx,cx ;clear cx
    
    mov ah,1
    int 21h
    
    ;char is not a carriage return
    
    while:
    cmp al,0dh
    je end_while ;exit loop
    
    ;save character on stack
    push ax
    ;increment count
    inc cx
    
    ;read a char
    int 21h
    jmp while ; loop back
    
    end_while:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    jcxz exit
    
    Top:
    pop dx
    int 21h
    loop Top
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main  

"Because the number of characters to be entered is unknown; the
program USl!S ex to count them. ex controls the FOR loop that dfsplays the
characters in reverse order. . .
In lines .]6-24, the program executes a WHILE loop that pushes
characters on the stack and reads new ones, until a carriage return is entered.
Even though the input characters are in AL, it's necessary to save all of AX
on the stack, because the operand of PUSH must be a word.
When the program exits the WHILE loop (line 25), all the charac1ers
are on the stack, with the low byte of the top of the stack containing ~he
last character to be entered. AL contains the ASCII code of the carriage return.
At line 32, the program checks to see if any character~ were read. If
not, CX contains 0 and the program jumps to the DOS exit. If any characters
were read, the program enters a FOR loop that repeatedly pop~ the stack into
DX (so that DL will get a character code), and <foplays a character. "