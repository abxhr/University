.MODEL SMALL
.STACK 20
GETSTR MACRO STR
MOV AH, 0AH
LEA DX, STR
INT 21H
ENDM
PRINT MACRO STR
MOV AH, 09H
LEA DX, STR
INT 21H
ENDM
.DATA
MSG1 DB 0DH, 0AH, 'ENTER THE FIRST STRING: $'
LEN1 DW $-MSG1
MSG2 DB 0DH, 0AH, 'ENTER THE SECOND STRING: $'
LEN2 DW $-MSG2
STR1 DB 80, 80 DUP('$')
STR2 DB 80, 80 DUP('$')
MSG3 DB 0DH, 0AH, 'IDENTICAL$'
MSG4 DB 0DH, 0AH, 'NOT IDENTICAL$'
.CODE
START:
MOV AX, @DATA
MOV DS, AX
MOV ES, AX
MOV CX, LEN1
PRINT MSG1
GETSTR STR1
PRINT MSG2
GETSTR STR2
CMP CX, LEN2
JNE NOTEQUAL
LEA SI, STR1+2
LEA DI, STR2+2
MOV CL, STR1+1
MOV CH, 00H
REPE CMPSB
JNE NOTEQUAL
PRINT MSG3
JMP JAY1
NOTEQUAL: PRINT MSG4
JAY1: MOV AX, 4C00H
INT 21H
END START