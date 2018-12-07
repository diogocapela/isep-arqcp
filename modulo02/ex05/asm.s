.section .data
	.global number

.section .text
	.global swapBytes # short int swapBytes(void)


swapBytes:
	#prologue
	pushl %ebp      # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	movl $0, %eax    #clean eax registes
	movl $0, %ebx	 #clean ebx register
	movw number, %bx #move value of number into bx
	movb %bl, %ah    #move bl into ah
	movb %bh, %al    #move bh into al
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp     #  restore the previous stack frame pointer
	ret
