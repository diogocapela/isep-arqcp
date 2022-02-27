.section .data
	.global ptrsrc #short int ptr
	.global ptrdest
	.global num    # int


.section .text
	.global sort_without_reps 
	.global sort_ascending_array
	.global copy_array  #void void
	.global remove_reps

sort_without_reps:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	#pushl %edi
	######################################################
	
	call copy_array
	#call sort_ascending_array
	call remove_reps

	# Restore Regsiters
	######################################################
	#popl %edi
	#popl %esi
	#popl %ebx
	######################################################
	
	
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
