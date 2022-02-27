.section .data
	.global ptrvec
	.global num
	.global x

.section .text
	.global  vec_search #returns pointer to int, receives void


#searches the short int x in an array of short ints, pointed by ptrvec, with num elements, and returns the
#memory address of it’s first occurrence or zero if not found.

vec_search:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################

	

	cmpl $0, num   #if array is empty return 0
	jne not_zero
	not_found:
	movl $0, %eax
	jmp end_final
	

	not_zero:
	movl $0, %eax
	movl $0, %edx
	movl $0, %edi
	movl $0, %ecx
	movl ptrvec, %esi
	movl num, %ebx
	movw x, %cx

	search:
		movw (%esi), %dx	#move value in arrat to dx
		cmpw %cx, %dx		#compare it with x, if equal jump to end
		je end

		cmpl %ebx, %eax
		je not_found

		addl $2, %edi
		addl $1, %eax
		addl $2, %esi       #go to next value in array
		jmp search

	end:
	movl ptrvec, %ebx 
	addl %edi, %ebx
	movl %ebx, %eax
	end_final:
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

