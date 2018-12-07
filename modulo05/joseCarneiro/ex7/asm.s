.section .data
	.equ field_1, 0
	.equ field_2, 2
	.equ field_3, 4
	.equ field_4, 44
	.equ field_5, 124

.section .text
	.global locate_greater #void update_grades(Student *s, int *new_grades);
	


locate_greater:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	
	movl 8(%ebp), %esi
	movl 12(%ebp), %ebx
	movl 16(%ebp), %edi

	leal field_3(%esi, 1), %eax
	movl %eax, %esi
	movl $0, %eax

	movl $10, %edx

	body:
		cmpl $0, %edx
		je end

		movl (%esi), %ecx
		cmpl %ebx, %ecx
		jle continue
		movl %ecx, (%edi)
		incl %eax
		addl $4, %edi


	continue:
		addl $4, %esi
		decl %edx
		jmp body
	
	

	end:
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

