.section .data
	.global A	#int
	.global B    #int


.section .text
	.global isMultiple  #char




isMultiple:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	#pushl %edi
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	movl A, %eax
	movl B, %ecx
	divl %ecx

	cmpl $0, %edx
	je isDivisible
	movl $1, %eax
	jmp end



	isDivisible:
	movl $0, %eax
	jmp end


	end:
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
