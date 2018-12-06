;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;       add1.asm
;
;
	.ORIG	x3000
	
; initialize 

	AND R0, R0, #0		; clear registers
	AND R2, R2, #0		; R2 is sum
	AND R1, R1, #0 		; R1 is current integer
	ADD R0, R0, #10		; R0 is integer counter
	
	
Loop1	ADD R2, R2, R1		;  Add integer
		ADD R1, R1, #1		; increment integer
		ADD R0, R0, -1		; decrement counter
		BRp Loop1
	
	

		

BYEBYE		HALT



