.section .data
	
.section .text
	.global count_bits_zero #int count_bits_zero(int x) 
	.global vec_count_bits_zero

# detects if two strings are equal. If the strings are equal, the function should return 1, or 0 otherwise.

vec_count_bits_zero:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	#pushl %esi
	#pushl %edi
	######################################################
	movl 8(%ebp), %ebx
	movl 12(%ebp), %ecx
	movl $0, %eax
	cmpl $0, %ecx
	je end

	loop:
		movl (%ebx), %edx
		pushl %ebx
		pushl %ecx
		pushl %edx
		pushl %eax

		pushl %edx
		call count_bits_zero
		movl %eax, %esi
		addl $4, %esp

		popl %eax
		popl %edx
		popl %ecx
		popl %ebx

		addl %esi, %eax

		addl $4, %ebx
	loopnz loop

	end:
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

