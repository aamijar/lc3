; [1] Set R5 to zero

AND R5, R5, #0

; [2] Set R0 to be 8 less than R6

ADD R0, R6, #-8

; [3] Set R4 to be the absolute difference between 
;     R7 and R1.  (In other words, |R7 - R1| -- the absolute value of R7-R1.)
 

NOT R4, R1
AND R4, R4, #1
ADD R4, R4, R7
BRzp NEXT
NOT R4, R4
ADD R4, R4, #1
NEXT

; [4] Set R2 to the value xFDB0


LD RZ, VAL
BRnzp NEXT
VAL .FILL xFDB0
NEXT

; [5] Execute a loop 12 times.  Use R3 as our counter.

AND R3, R3, #0
ADD R3, R3, #12
LOOP _________
ADD R3, R3 #-1
BRp LOOP

; [6] Send  prompt to the screen  “My First Prompt > “

LEA R0, PROMPT
PUTS 
______
HALT
PROMPT .STRINGZ "My First Prompt >"

; [7] Read a single character from the keyboard.  Wait on the character to be pressed. 

GETC

; [8] We have just read a single numeric digit from the keyboard using the GETC command. Convert this value to binary and place it into R4.

LD R3, NEG 30
ADD R4, R0, R3
______
HALT
NEG 30 .FILL xFFD0

; [9] Load a value from a known memory location STATE which is x1030 locations above our current PC location, into R0.

LEA R1, STATE 
LDR R0, R1, #0

; [10] Output a single binary value from R4 to the screen. 

LD R1, ASCII
ADD R0, R4, R1
OUT
HALT
ASCII .FILL x30

; [11] Assume there are three memory locations, labeled NUM1, NUM2, and NUM3.  Add the two 16-bit integers in NUM3 and NUM2, and store the sum to NUM1.  Assume that the labels are all “nearby” to your code (i.e., within 200 instructions or so).

LD R0, NUM1
LD R1, NUM2
LD R2, NUM3
ADD R0, R2, R1
ST R0, NUM1