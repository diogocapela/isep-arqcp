.section .data
	.global op1 #int
	.global op2 #int

.section .text
	.global sum2ints  #long long int sum2ints()

sum2ints:
#op1 + op2 (both 32-bit values declared in C). The function should return a 64-bit value that must be printed in C.

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	#pushl %esi
	#pushl %edi
	######################################################

	movl $0, %eax      #clean eax register
	movl op1, %eax     #move op1 into eax
	movl $0, %ebx      #clean ebx register
	movl op2, %ebx     #move op2 into ebx
	addl %ebx, %eax    #add ebx to eax
	movl $0, %edx	   #clean edx register	
	adcl $0, %edx      #add carry into edx 

	# Restore Regsiters
	######################################################
	#popl %edi
	#popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
