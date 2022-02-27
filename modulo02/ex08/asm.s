.section .data
	.global A #char
	.global B #short int
	.global C #int
	.global D #int

.section .text
	.global ex8  #sum char A to int C and sub the result to the sum of int D and short B

ex8:
#C + A - D + B.
#A is a 8-bit variable,
#B is a 16-bit variable
#C and D are both 32-bit variables.   
# The function should return a 64-bit value that must be printed in C.

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	#pushl %edi
	######################################################

	movl $0, %eax          #clean eax registes
	movl $0, %ebx          #clean ebx registes
	movl $0, %edx	       #clean edx register
	movl C, %eax           #move C into eax
	movb A, %bl			   #move A into bk	
	addl %ebx, %eax        #add ebx and eax
	adcl $0, %edx          #if there is a carry add it into edx
	movl $0, %ebx          #clean edx register
	movl D, %ebx		   #move D into  ebx	
	subl %ebx, %eax		   #subtract ebx to %eax		
	sbbl $0, %edx  		   #put carry value into edx
	movl $0, %ebx   	   #clean edx register	
	movw B, %bx			   #move b into bx	
	addl %ebx, %eax	 	   #add ebx into eax
	adcl $0, %edx	       #if there is a carry add it into edx


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
