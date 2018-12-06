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
	
	ADD R0, R0, #2		;fill registers
	ADD R1, R1, #4
	
	ADD R2, R2, #8
	
	LD R3, MEM1
	LD R4, MEM2
	LD R5, MEM3
	
	ST R0, MEM4
	ST R1, MEM5

		

BYEBYE		HALT

MEM1	.FILL   x0000
MEM2	.FILL   x0002
MEM3	.FILL   x0004
MEM4	.FILL   x0006
MEM5	.FILL	xFFFF

