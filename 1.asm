; [1] Set R5 to zero

AND	R5,	R5,	#0


; [2] Set R0 to be 8 less than R6

ADD	R0,	R6,	#-8

; [3] Set R4 to be the absolute difference between 
;     R7 and R1.  (In other words, |R7 - R1| -- the absolute value of R7-R1.)
 

 
; [4] Set R2 to the value xFDB0

; [5] Execute a loop 12 times.  Use R3 as our counter.

; [6] Send  prompt to the screen  “My First Prompt > “

; [7] Read a single character from the keyboard.  Wait on the character to be pressed. 

; [8] We have just read a single numeric digit from the keyboard using the GETC command. Convert this value to binary and place it into R4.


; [9] Load a value from a known memory location STATE which is x1030 locations above our current PC location, into R0.


; [10] Output a single binary value from R4 to the screen. 



; [11] Assume there are three memory locations, labeled NUM1, NUM2, and NUM3.  Add the two 16-bit integers in NUM3 and NUM2, and store the sum to NUM1.  Assume that the labels are all “nearby” to your code (i.e., within 200 instructions or so).

LD R0, NUM1
LD R1, NUM2
LD R2, NUM3
ADD R0, R2, R1
ST R0, NUM1