.section .data
	.global op1
	.global op2
	.equ CONST1, 15

.section .text
	.global sum_and_subtract_constant #int sum_and_subtract_constant(void)


sum_and_subtract_constant:
	#prologue
	pushl %ebp      # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	#(CONST - op1) - (CONST - op2). = const - op1 -const +op2 = op2-op1
	movl $CONST1, %eax #moves const1 to eax
	subl op1, %eax    #subtrac op1 to eax, results stays in eax
	movl $CONST1, %ebx #mov const1 to ebx
	subl op2, %ebx    #sub op2 to ebx, result stays in ebx
	subl %ebx, %eax   #sub ebx to eax, result stays in eax
	 
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp     #  restore the previous stack frame pointer
	ret
