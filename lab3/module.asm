EXTRN LETTER:byte
PUBLIC print_letter

SD SEGMENT para 'DATA'
SD ENDS

SC2 SEGMENT para public 'CODE'
	assume CS:SC2, DS:SD
print_letter:
    mov ax, SD
    mov ds, ax

    mov dl, LETTER
    mov ah, 02h
    int 21h

    mov dl, 20h
    mov ah, 02h
    int 21h 

    mov dl, LETTER
    add dl, 10h
    mov ah, 02h
    int 21h

    mov ax, 4c00h
	int 21h

SC2 ENDS
END