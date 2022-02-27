.section .data
	.global op1
	.global op2
	.global op3
	.global op4
	.global res

.section .text
	.global sum_and_subtract

sum_and_subtract:
	#prologue
	pushl %ebp      # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	movl op1, %ecx   #place op1 in ecx
	movl op2, %edx   #place op2 in edx
	movl op3,  %ebx   #place op3 in ebx
	movl op4,  %eax   #place op4 in eax
	addl  %ecx, %edx   #add %ecx to %edx, the result is in %edx
	addl  %ebx, %eax   #add ebx to %eax, the result is in %eax
	subl  %edx, %eax   #sub edx to eax, the result is in eax
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp     #  restore the previous stack frame pointer
	ret
