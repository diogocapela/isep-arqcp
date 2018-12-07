.section .data
	.equ field_a_1, 0
	.equ field_a_2, 4	
	.equ field_b_a, 0
	.equ field_b_b, 8
	.equ field_b_x, 12
	.equ field_b_c, 16
	.equ field_b_y, 20
	.equ field_b_e, 24
	.equ field_b_z, 28
	

.section .text
	#.global fun1 
	.global fun2
	#.global fun3
	#.global fun4
fun2:
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
	movl field_b_z(%edi), %esi
	movl %esi, %eax


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
