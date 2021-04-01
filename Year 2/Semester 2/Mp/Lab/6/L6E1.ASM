.model small
.stack
.data

  uMaxLength db 255
  uActualLength db ?
  szFileName db 255 dup (?)
  buffer db 100 dup (?), '$'
  
  OpenFileErrorMessage db 'No such file.','$'
  ReadErrorMessage db 'Cannot read from file.','$'
  InputMessage db 'Write a filename to display:', '$'

.code

main   proc

  mov ax, seg uMaxLength 
  mov ds, ax

  mov ah, 09h
  lea dx, InputMessage ;write input message on the screen
  int 21h


  mov ah, 0ah
 
  lea dx, uMaxLength ;read file name
  int 21h

  

  mov al, uActualLength 
  xor ah, ah
  mov si, ax
  mov szFileName[si], 0 ;make sz see 0A function

 
  mov ah, 3dh
  xor al, al 
  lea dx, szFileName
  int 21h ;open the file

  jc openError ;if error


  
  mov bx, ax 
  
  repeat:

    mov ah, 3fh
    lea dx, buffer
    mov cx, 100 
    int 21h

    jc readError; if error

    mov si, ax
    mov buffer[si], '$'

    

    mov ah, 09h
    int 21h ;print on screen



    cmp si, 100
    je repeat 
  
    jmp stop;jump to end


  openError:

    mov ah, 09h
    lea dx, OpenFileErrorMessage
    int 21h
    CALL NXTLINE
    jmp stop

 
  readError:

   mov ah, 09h
   lea dx, ReadErrorMessage
   int 21h
   CALL NXTLINE

  stop:

    mov ax, 4c00h
    int 21h

  NXTLINE PROC NEAR ; NEXTLINE procedure start here
    MOV AH, 2 ;
    MOV DL, 0AH ; Line feed
    INT 21H ; DOS interrupt 21H
    MOV DL,0DH ; Carriage return
    INT 21H ; DOS interrupt 21H RET ; RET instruction stands for return, used at the end of the procedures
  NXTLINE ENDP

main   endp
end main