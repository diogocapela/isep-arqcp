.section .data
	
.section .text
	.global test_equal #int test_equal(char *a, char *b)

# detects if two strings are equal. If the strings are equal, the function should return 1, or 0 otherwise.

test_equal:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	movl 8(%ebp), %edi
	movl 12(%ebp), %esi
	movl $0, %ecx
		
	compare:
		movb (%edi), %cl
		movb (%esi), %ch
		cmpb %cl, %ch
		je continue
		jmp not_equal

		continue:
			incl %edi
			incl %esi
			cmpb $0, (%edi)
			je maybe_equal
			cmpb $0, (%esi)
			je not_equal
			jmp compare

	maybe_equal:
		cmpb $0, (%esi)
		jne not_equal
		movl $1, %eax
		jmp end

	not_equal:
		movl $0, %eax

	end:
	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	#popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret

