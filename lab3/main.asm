PUBLIC LETTER
EXTRN print_letter: far

SSTK SEGMENT para STACK 'STACK'
	db 100 dup(0)
SSTK ENDS

SD SEGMENT para 'DATA'
    LETTER LABEL byte
SD ENDS

SC1 SEGMENT para public 'CODE'
	assume CS:SC1, DS:SD
main:
    mov ah, 08h
	int 21h	

    mov bx, seg LETTER
	mov es, bx
    mov es:LETTER, al

	call print_letter
SC1 ENDS
END main
