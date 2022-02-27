.section .data
	.global ptrvec #short int ptr
	.global ptrdest
	.global num    # int


.section .text
	.global sort_ascending_array  #void void

swap:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	
	movl %edi, ptrdest( %ebx, 4)
	movl %eax, ptrdest( %edx, 4)
	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	
	
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
