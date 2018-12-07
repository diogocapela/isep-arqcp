.section .data
	.global ptrvec
	.global num

.section .text
	.global vec_add2 #void


#adds two (2) to all the elements of an array of integers, with num elements and pointed by ptrvec.

vec_add2:


	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	#pushl %edi
	######################################################

	movl ptrvec, %esi
	movl num, %ebx

	add_two:
		cmpl $0, %ebx #check if vector reached the end or not empty
		je end
		addl $2, (%esi)  #add two to the value pointed by esi
		decl %ebx		 #decrease num	
		addl $4, %esi	#jump to next value
		jmp add_two


	end:
	# Restore Regsiters
	######################################################
	#popl %edi
	popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret

