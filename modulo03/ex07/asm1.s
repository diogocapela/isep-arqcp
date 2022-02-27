.section .data
	.global ptr

.section .text
	.global encrypt #int


#adds two (2) to all the elements of an array of integers, with num elements and pointed by ptrvec.

encrypt:


	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	#pushl %edi
	######################################################

	movl ptr1, %esi
	movl $0, %ecx
	movl $0, %eax

	add_two:
		movb (%esi), %cl 
		cmpb $0, %cl
		je end
		
		cmpb $32, %cl
		je increment
		
		cmpb $97, %cl
		je increment
		
		addl $2, (%esi)
		incl %eax

	increment:
		incl %esi
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

