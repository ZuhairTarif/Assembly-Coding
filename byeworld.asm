;Write an assembly program that prints
;Hello World five times and then prints Bye world. 
;Hints: Use unconditional  CMP, conditional JE, JNE instruction. 


.MODEL SMALL
            
            
.STACK 100H

.DATA
   msg1 DB 'Hello World', 0Dh,0Ah, 24h
   msg2 DB 'Bye World',  0Dh,0Ah, 24h

.CODE
   MAIN PROC
      MOV AX, @DATA       ; initialize ds
      MOV DS, AX    
      
      MOV CX, 0           ; set counter register to 0
      MOV AH, 09h         ; set AH to string output
      
      LABEL1:         
         LEA DX, msg1     ; display hello world
         INT 21H          ; do it
         
         INC CX           ; increment
         CMP CX, 5        ; compare CX to the limit
         JE LABEL2        ; jump to LABEL2 if CMP is equal
         JNE LABEL1       ; jump to LABEL1 if CMP is not equal
         
      LABEL2:
         LEA DX, msg2     ; display bye world
         INT 21H 
      
      
   MAIN ENDP
END MAIN