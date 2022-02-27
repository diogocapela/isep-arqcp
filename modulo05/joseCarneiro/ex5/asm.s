.section .data
	.equ field_1, 0
	.equ field_2, 2
	.equ field_3, 4
	.equ field_4, 44
	.equ field_5, 124

.section .text
	.global update_address #void update_address(Student *s, char *new_address)
	


update_address:

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

	leal field_5(%esi, 1), %eax

	body:
		movl (%edi), %ecx

		cmpl $0, %ecx
		je end

		movl %ecx, (%eax)

		incl %edi
		incl %eax
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

