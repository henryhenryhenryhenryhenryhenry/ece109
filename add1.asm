;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;       add1.asm
;
;
	.ORIG	x3000
	
; initialize 

	AND R0, R0, #0		; clear registers
	AND R1, R1, #0
	AND R2, R2, #0
	
	ADD R0, R0, #2		; Fill Registers
	ADD R1, R1, #4
	
	ADD R4, R0, R1		; Add
	ADD R2, R2, #-5
	
	
	ADD R6, R2, R1
	
	ADD R5, R2, R0
	
	NOT R6, R4			; invert
	
		

BYEBYE		HALT

