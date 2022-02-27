.section .data
	.global ptrvec #short int ptr
	.global num    # int
	.global x      #short int 

.section .text
	.global exists    #int void
	.global vec_diff  #int void

#tests if the short int x exists more than once in the array of short int elements pointed by ptrvec with num elements. The function should return 1 if short int x has duplicates or 0 if not.
#Use the previous function to implement a function int vec_diff(void) that computes the number of elements in the array of short int elements pointed by ptrvec that do not have duplicates.


exists:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	

	movl ptrvec, %edi
	movl num, %ecx
	movl $0, %ebx
	movw x, %bx
	movl $0, %eax
	movl $0, %edx
	cmpl $0, %ecx
	je end


	my_loop:
		movw (%edi), %ax
		cmpw %bx, %ax
		jne continue
		incl %edx
		continue:
			addl $2, %edi  

	
		loopne my_loop
	
	movl $0, %eax		
	cmpl $2, %edx
	jl end
	addl $1, %eax

	end:
	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	
	
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
