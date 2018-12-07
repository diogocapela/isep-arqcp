.section .data
	.global number #char
	.global number1 #char

.section .text
	.global concatBytes # short int concatBytes(void)


concatBytes:
	#prologue
	pushl %ebp      # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	movl $0, %eax          #clean eax registes
	movl $0, %ebx	       #clean ebx register
	movb number, %al       #move number into al
	movb number1, %ah      #move number1 into ah

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp     #  restore the previous stack frame pointer
	ret
