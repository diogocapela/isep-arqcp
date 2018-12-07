.section .data
	.equ field_1, 0
	.equ field_2, 8
	.equ field_3, 12
	

.section .text
	.global fill_s2 #void fill_s2(s2 *s, short vw[3], int vj, char vc[3]);
	


fill_s2:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	
	movl 8(%ebp), %edi
	movl 12(%ebp), %esi
	movl 18(%ebp), %ebx
	movl 22(%ebp), %ecx

	

	
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

