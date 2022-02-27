.section .data
	.equ field_1, 0
	.equ field_2, 4
	.equ field_3, 8
.section .text
	.global load_product #int  load_product(vmachine_t *vmachine , char  prod);
	

load_product:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	#pushl %esi
	pushl %edi
	######################################################
	
	movl 8(%ebp), %edi
	movl 12(%ebp), %ecx
	subl $1, %ecx
	movl $field_3, %edx

	leal (%edi, %edx, 1), %eax   #get adrres of char array

	leal (%eax, %ecx, 1), %ebx   #get address of index prod from char array
	cmpb $255, (%ebx)
	je end

	shlb $1, (%ebx)
	addb $1, (%ebx)   #add 1 
	
	movl $field_2, %edx
	leal (%edi, %edx, 1), %eax
	addl $1, (%eax)
	
	movl $1, %eax


	end:
	movl $0, %eax
	# Restore Regsiters
	######################################################
	popl %edi
	#popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret

