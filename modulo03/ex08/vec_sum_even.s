.section .data # Global Variables

	.global even
	.global num
	.global ptrvec

.section .text # Functions

	.global vec_sum_even

#------------------------------------------------------------------------------------
vec_sum_even:
	
	# Prologue
	######################################################
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################



	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	# Epilogue
    ######################################################
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	######################################################

	ret
#------------------------------------------------------------------------------------
