.section .data
	.global number
	.global number1

.section .text
	.global crossSumBytes # short int concatBytes(void)


crossSumBytes:
	#prologue
	pushl %ebp      # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	movl $0, %eax          #clean eax registes
	movl $0, %ebx	       #clean ebx register
	movw number, %ax       #move number into ax
	movw number1, %bx      #move number1 into bx
	addb %bh, %al          #add bh to al
	addb %bl, %ah          #add bl to ah
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp     #  restore the previous stack frame pointer
	ret
