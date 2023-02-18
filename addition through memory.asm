.MODEL SMALL 
.STACK 100H
.CODE
   MAIN PROC
      MOV [110H],11H
      MOV [1102H],1004H
      MOV AX,1100H
      MOV BX,1102H
      ADD AX,BX
      MOV [1200H],AX
               
               
   MAIN ENDP
END MAIN