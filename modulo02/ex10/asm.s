.section .data
	.global op1 #int
	.global op2 #int

.section .text
	.global sum2ints  #int sum2ints()

sum2ints:
#op1 + op2 (both 32-bit values declared in C). The function should return a 64-bit value that must be printed in C.

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
	movl $0, %ecx
	movl $0, %ebx

	movl op1, %ecx
	movl op2, %eax

	addl %ecx, %eax

	jc returnIfCarry
	jo returnIfOverFlow
	movl $0, %eax
	jmp fim



	returnIfCarry:
	movl $1, %eax
	jmp fim

	returnIfOverFlow:
	movl $2, %eax
	jmp fim 

	fim:
	

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
