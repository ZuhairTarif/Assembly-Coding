.MODEL SMALL
.STACK 100H

.DATA
MSG1 DB 'Welcome to My Calculator!!', 0AH, 0DH, '$'
MSG2 DB 0AH, 0DH,'Please enter digit 1:', 0AH, 0DH, '$'
MSG3 DB 0AH, 0DH,'Please enter digit 2:', 0AH, 0DH, '$'
MSG4 DB 0AH, 0DH,'Output:', 0AH, 0DH, '$'
MSG5 DB 0AH, 0DH,'Thank you for using my Calculator', 0AH, 0DH, '$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; print welcome message
    MOV AH, 09H
    LEA DX, MSG1
    INT 21H
    
    ; call TASK procedure to get digit 1
    CALL TASK1
    
    ; call TASK procedure to get digit 2
    CALL TASK2
    
    ; subtract the two digits and print the result
    MOV AX, BX
    SUB AX, CX
    MOV BX, AX
    
    ; print output message and result
    MOV AH, 09H
    LEA DX, MSG4
    INT 21H
    
    MOV AH, 02H
    MOV DL, BL
    ADD DL, 30H
    INT 21H
    
    ; print thank you message
    MOV AH, 09H
    LEA DX, MSG5
    INT 21H
    
    ; return to DOS
    MOV AH, 4CH
    INT 21H
MAIN ENDP

TASK1 PROC
    ; print "Please enter digit 1:" message
    MOV AH, 09H
    LEA DX, MSG2
    INT 21H
    
    ; read digit 1 from user
    MOV AH, 01H
    INT 21H
    SUB AL, 30H
    MOV BX, AX
    
    ; return to calling procedure
    RET
TASK1 ENDP

TASK2 PROC
    ; print "Please enter digit 2:" message
    MOV AH, 09H
    LEA DX, MSG3
    INT 21H
    
    ; read digit 2 from user
    MOV AH, 01H
    INT 21H
    SUB AL, 30H
    MOV CX, AX
    
    ; return to calling procedure
    RET
TASK2 ENDP

END MAIN
