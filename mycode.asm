.MODEL SMALL

.DATA
    BANNER1  DB '================================$'
    BANNER2  DB '     8086 DIGITAL CLOCK         $'
    BANNER3  DB '  Anas Khan   | Muhammad Muneeb $'
    BANNER4  DB '================================$'
    LABEL_T  DB '        Time ->   $'
    COLON    DB ':$'
    CRLF     DB 0DH, 0AH, '$'

.CODE
MAIN PROC
    MOV  AX, @DATA
    MOV  DS, AX

    MOV  AH, 00H
    MOV  AL, 03H
    INT  10H

    MOV  AH, 09H
    LEA  DX, BANNER1
    INT  21H  
    
    
    LEA  DX,CRLF
    INT  21H

    LEA  DX,BANNER2
    INT  21H
    LEA  DX,CRLF
    INT  21H

    LEA  DX,BANNER3
    INT  21H
    LEA  DX,CRLF
    INT  21H
 LEA  DX,BANNER4
    INT  21H
    LEA  DX, CRLF
    INT  21H
LEA  DX, CRLF
    INT  21H






CLOCK_LOOP:
    MOV  AH,02H
    MOV  BH,00H
    MOV  DH,06H
    MOV  DL,00H
    INT  10H

    
    MOV  AH,09H
    LEA  DX,LABEL_T
    INT  21H
    MOV  AH,2CH
    INT  21H
    MOV  BL,CH 
              
    MOV  BH,CL           
    MOV  CL,DH           

    
    MOV  AL, BL
    CALL PRINT_BYTE

    
    MOV  AH, 09H
    LEA  DX, COLON
    INT  21H

    
    MOV  AL, BH
    CALL PRINT_BYTE

    
    MOV  AH, 09H
    LEA  DX, COLON
    INT  21H

   
    MOV  AL, CL
    CALL PRINT_BYTE

    
    CALL DELAY

    JMP  CLOCK_LOOP

MAIN ENDP



PRINT_BYTE PROC
    AAM                  
    PUSH AX

    MOV  DL, AH
    ADD  DL, '0'
    MOV  AH, 02H
    INT  21H            

    POP  AX
    MOV  DL, AL
    ADD  DL, '0'
    MOV  AH, 02H
    INT  21H            

    RET
PRINT_BYTE ENDP



DELAY PROC
    PUSH CX
    PUSH BX

    MOV  BX, 0010H
OUTER:
    MOV  CX, 0FFFFH
INNER:
    LOOP INNER
    DEC  BX
    JNZ  OUTER

    POP  BX
    POP  CX
    RET
DELAY ENDP

