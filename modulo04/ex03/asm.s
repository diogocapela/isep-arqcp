.section .data
	
.section .text
	.global smallest  #int smallest(int a, int b, int c)


#returns the smaller of three integer numbers (passed as parameters).

smallest :

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	#pushl %esi
	pushl %edi
	######################################################
	movl 8(%ebp), %ebx
	movl 12(%ebp), %ecx
	movl 16(%ebp), %edi

	compare_a_b:
	cmpl %ecx, %ebx
	jle compare_a_c
	jmp compare_b_c


	compare_a_c:
	cmpl %edi, %ebx
	jle lower_a
	jmp lower_c

	compare_b_c:
	cmpl %edi, %ecx
	jle lower_b
	jmp lower_c
	
	lower_a:
	movl %ebx, %eax
	jmp end

	lower_b:
	movl %ecx, %eax
	jmp end

	lower_c:
	movl %edi, %eax

	end:
	# Restore Regsiters
	######################################################
	popl %edi
	#popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret

