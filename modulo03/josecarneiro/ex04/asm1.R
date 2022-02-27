.section .data
	.global ptrvec
	.global res

.section .text
	.global vec_avg  #void



#returns the sum of all the elements of an array of integers, pointed by ptrvec, with num elements.  Then, implement another function int vec_avg(void)
#(in Assembly) that uses the value returned by int vec_sum(void) to compute the average.



vec_avg:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	#pushl %edi
	######################################################
	call vec_sum

	movl $0, %edx
	movl num, %ecx

	divl %ecx

	# Restore Regsiters
	######################################################
	#popl %edi
	#popl %esi
	#popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret


