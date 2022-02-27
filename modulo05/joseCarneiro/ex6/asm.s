.section .data
	.equ field_1, 0
	.equ field_2, 2
	.equ field_3, 4
	.equ field_4, 44
	.equ field_5, 124

.section .text
	.global update_grades #void update_grades(Student *s, int *new_grades);
	


update_grades:

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
	movl 12(%ebp), %edi

	leal field_3(%esi, 1), %eax
	
	movl $10, %edx
	body:
		movl (%edi), %ecx

		cmpl $0, %edx
		je end

		movl %ecx, (%eax)

		addl $4, %eax
		addl $4, %edi
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

