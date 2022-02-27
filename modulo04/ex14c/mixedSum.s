.section .data
	
.section .text
	.global join_bits #int join_bits(int a, int b, int pos)
	.global mixed_sum #int mixed_sum(int a, int b, int pos)

# function should return the sum of int join_bits(int a, int b, int pos) with int join_bits(int b, int a, int pos)

mixed_sum:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	movl 8(%ebp), %ebx  #ebx is a
	movl 12(%ebp), %edi #edi	 is b
	movl 16(%ebp), %esi  #ecx is pos
	
	pushl %esi
	pushl %edi
	pushl %ebx

	call join_bits
	addl $12, %esp

	movl %eax, %edx  #result of first call is in esi

	pushl %edx

	pushl %esi
	pushl %ebx
	push %edi

	call join_bits

	addl $12, %esp

	popl %edx

	addl %edx,%eax  #summing the result of the two calls


	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret

