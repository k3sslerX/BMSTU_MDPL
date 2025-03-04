.MODEL TINY
.DOSSEG
.DATA
	MSG DB "Hello, World!", 0Dh, 0Ah, '$'
.CODE
.STARTUP
	MOV CX, 3
	label_1:
		MOV AH, 09h
		MOV DX, OFFSET MSG
		INT 21h
		loop label_1
	MOV AH, 4Ch
	INT 21h
END
    