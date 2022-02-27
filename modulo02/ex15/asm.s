.section .data
	.global num1	#int
	.global num2    #int
	.global operand #char

.section .text
	.global sum 				#int
	.global subtract		    #int	
	.global division			#int	
	.global multiplication		#int
	.global modulo				#int
	.global powerOfTwo			#int
	.global powerOfThree		#int



subtract:

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
	movl num1, %eax;
	movl num2, %ecx;
	subl %ecx, %eax;
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


sum:

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
	movl num1, %eax;
	movl num2, %ecx;
	addl %ecx, %eax;
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


multiplication:

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
	movl num1, %eax;
	movl num2, %ecx;
	mull %ecx
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

division:

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
	movl num1, %eax;
	movl num2, %ecx;
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

modulo:

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
	movl num1, %eax;
	movl num2, %ecx;
	divl %ecx
	movl $0, %eax
	movl %edx, %eax
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

powerOfTwo:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	#pushl %edi
	movl $0, %eax
	movl num1, %eax;
	mull %eax
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

powerOfThree:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	#pushl %edi
	movl $0, %eax
	movl num1, %eax;
	movl num1, %ecx;
	mull %ecx
	mull %ecx
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
