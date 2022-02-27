.section .data
	
.section .text
	.global count_bits_zero #int count_bits_zero(int x) 

# detects if two strings are equal. If the strings are equal, the function should return 1, or 0 otherwise.

count_bits_zero:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	movl 8(%ebp), %ebx
	movb $31, %cl
	movl $0, %eax
	loop:
		
		movl %ebx, %edx
		sar %cl, %edx

		andl $1, %edx

		cmpl $0, %edx
		jne not_zero
		incl %eax
		not_zero: 
			decb %cl
			cmpb $-1, %cl
			jne loop


	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	#popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret

