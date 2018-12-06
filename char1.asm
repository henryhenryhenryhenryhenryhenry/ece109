;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;       char1.asm
;
;
	.ORIG	x3000
	
; initialize 

	AND R0, R0, #0		; clear registers
	AND R2, R2, #0		; R2 is sum
	ADD R2, R2, #8		; R0 is integer counter
	
	
	
	
Loop1	GETC		;  TRAP x23  Get a character
		ADD R5,R0,#0  ; Move to R5
		OUT		; Write the Char
		ADD R6,R0,#0 ; Move to R6
		
		ADD R2, R2, -1		; decrement counter
		BRp Loop1
	
	LEA R0, BYE2
	PUTS		; Write a String
	

		

BYEBYE		HALT

BYE2	.STRINGZ	"Bye Bye! "


