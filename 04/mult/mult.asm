// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)


	@R0
	D=M
	@x
	M=D

	@R1
	D=M
	@y
	M=D

	@0
	D=A
	@R2
	M=D // R2 = 0

(WHILE)
	@x
	D=M
	@END
	D;JLE // if x <= 0 goto END

	// increment R2 by y
	@y
	D=M // LOAD @y D
	@R2 
	M=D+M // ADD @R2 D

	@x
	M=M-1

	@WHILE
	0;JMP
(END)
	@END
	0;JMP
