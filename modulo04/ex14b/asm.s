.section .data
	
.section .text
	.global join_bits #int join_bits(int a, int b, int pos)

# detects if two strings are equal. If the strings are equal, the function should return 1, or 0 otherwise.

join_bits:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	movl $0, %ecx
	movl 8(%ebp), %ebx  #ebx is a
	movl 12(%ebp), %edi #edi	 is b
	movb 16(%ebp), %cl  #cl is pos
	movl $-1, %edx    #edx is large int

	movl $0, %esi    #in case pos is 31 giving the variables their numbers for the return
	movl %ebx, %eax
	cmpb $31, %cl
	jge end

	continue:
		incb %cl
		shl %cl, %edx     #edx is k
		movl %edx, %esi   #esi here as same value as k
		andl %edi, %esi  # doing b&k=j, %esi is now j
		movl $-1, %eax
		xorl %edx, %eax  #eax is now h
		andl %ebx, %eax   #eax is now l

	end:
		movl $0, %edx
		addl %esi, %eax  #this is the result
	

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

