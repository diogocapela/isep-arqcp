.section .data
	.equ field_1, 0
	.equ field_2, 4
	.equ field_3, 8
	.equ field_4, 12
	

.section .text
	.global fill_s1 #void fill_s1(s1 *s, int vi, char vc, int vj, char vd);
	


fill_s1:

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
	movl 12(%ebp), %eax
	movb 16(%ebp), %bl
	movl 20(%ebp), %ecx
	movb 24(%ebp), %bh

	leal field_1(%esi, 4), %edi

	movl %eax, (%edi)

	leal field_2(%esi, 1), %edi

	movb %bl, (%edi)

	leal field_3(%esi, 4), %edi

	movl %ecx, (%edi)

	leal field_4(%esi, 1), %edi

	movb %bh, (%edi)


	
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

