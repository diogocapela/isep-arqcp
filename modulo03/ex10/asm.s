.section .data
	.global ptr1
	.global ptr2
	.global ptr3

.section .text
	.global str_cat #void void

#concatenates, in a string pointed by ptr3, the strings pointed by ptr1 and ptr2, which have a maximum length of 40 bytes each.

str_cat:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################

	movl ptr1, %esi
	movl ptr2, %edi
	movl ptr3, %ebx
	movl $0, %edx

	loop:
		movb (%esi), %dl
		movb %dl, (%ebx)
		cmpb $0, %dl
		je concatenate
		incl %esi
		incl %ebx
		jmp loop


	concatenate:
		movb (%edi), %dl
		movb %dl, (%ebx)
		cmpb $0, %dl
		je end
		incl %edi
		incl %ebx
		jmp concatenate

	end:
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

