.MODEL SMALL
.STACK 100H   
.CODE
   MAIN PROC
      MOV AX, 5       ; random values in AX, BX and CX
      MOV BX, 6
      MOV CX, 7

      CMP AX, BX        ; compare AX with BX
      JL IF1            ; jump to "IF1" if less than
      JMP END_IF        ; otherwise jump to "END_IF"

      IF1:
         CMP BX, CX     ; compare BX with CX
         JL IF2         ; jump to "IF2" if less than
         JMP ELSE1      ; otherwise jump to "ELSE1"

      IF2:
         MOV AX, 0      ; put 0 in AX
         JMP END_IF     ; jump to "END_IF"

      ELSE1:
         MOV BX, 0      ; put 0 in BX
         JMP END_IF     ; jump to "END_IF"

      END_IF:
         MOV AH, 4CH    ; return control to DOS
         INT 21H
   MAIN ENDP
END MAIN