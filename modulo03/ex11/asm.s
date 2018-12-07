.section .data
	.global ptrvec #long long ptr
	.global num    #int

.section .text
	.global vec_greater20 #int void

#returns the number of elements of an array of long ints, pointed by ptrvec, with num elements, that are greater than 20.

vec_greater20:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	pushl %edi
	######################################################
	movl ptrvec, %edi
	movl num, %ecx
	movl $0, %eax
	movl $0, %edx
	cmpl $0, %ecx
	je end

	my_loop:
		cmpl $20, (%edi)
		jle continue
		incl %eax
		continue:
			addl $4, %edi  #ou addl $4, %edi?????

			loopne my_loop
			
	end:
	# Restore Regsiters
	######################################################
	popl %edi
	#popl %esi
	#popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret

