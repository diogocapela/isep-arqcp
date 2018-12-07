.section .data
	.global height	#int
	.global base    #int


.section .text
	.global getArea  #int




getArea:
	#compute the area of a triangle 

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
	movl height, %ecx
	movl base, %eax

	mull %ecx	#doing height*base

	movl $0, %ecx
	movl $2, %ecx

	divl %ecx   #doing height*base/2

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
