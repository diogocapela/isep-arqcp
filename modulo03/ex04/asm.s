.section .data
	.global ptrvec
	.global num

.section .text
	.global vec_sum   #void



#returns the sum of all the elements of an array of integers, pointed by ptrvec, with num elements.  Then, implement another function int vec_avg(void)
#(in Assembly) that uses the value returned by int vec_sum(void) to compute the average.

vec_sum:


	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	#pushl %edi
	######################################################

	movl ptrvec, %esi
	movl num, %ebx
	movl $0, %eax
	movl $0, %edx
	cmpl $0, %ebx
	je end

	sum_number:
	movl (%esi), %ecx
	addl %ecx, %eax
	decl %ebx
	addl $4, %esi	
	cmpl $0, %ebx
	je end
	jmp sum_number
	
	end:
	# Restore Regsiters
	######################################################
	#popl %edi
	popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret

