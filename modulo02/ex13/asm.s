.section .data
	.global op1 #int
	.global op2 #int

.section .text
	.global sumAndDivision #int sum2ints()

sumAndDivision:
#((A * B) + C) / D (all 32-bit variables)
#he function should return an integer 32-bit value as its result

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	#pushl %esi
	#pushl %edi
	######################################################
	movl $0, %eax
	movl A, %eax
	movl $0, %ebx
	movl B, %ebx
	imul %ebx, %eax #multiply ebx by eax, result stays in eax
	movl $0, %ebx
	movl C, %ebx
	addl %ebx, %eax
	movl $0, %ebx
	movl $0, %edx
	movl D, %ebx
	divl %ebx
	# Restore Regsiters
	######################################################
	#popl %edi
	#popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
