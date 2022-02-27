.section .data
	.global ptrvec #short int ptr
	.global num    # int
	.global x      #short int 

.section .text
	.global exists    #int void
	.global vec_diff  #int void

vec_diff:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	###########################################################
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	
	movl $0, %eax
	movl num, %ecx
	cmpl $0, %ecx
	je end
	movl ptrvec, %edi
	
	movl $0, %ebx
	movl $0, %edx
	

	run_vec:
		movw (%edi), %dx
		movw %dx, (x)
			pushl %ecx
			pushl %edx
				call exists
			popl %edx
			popl %ecx
		
		cmpl $1, %eax
		je duplicate
		incl %ebx
		
		duplicate:
		decl %ecx
		addl $2, %edi

	cmp $0, %ecx
	jne run_vec

	movl %ebx, %eax


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


