.section .data
	.equ field_1, 0
	.equ field_2, 4
	.equ field_3, 8
.section .text
	.global load_product_quantity #int load_product_quantity(vmachine_t *vmachine, char prod, int qtd)
	

load_product_quantity:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	#pushl %esi
	pushl %edi
	######################################################
	
	movl 8(%ebp), %esi
	movl 12(%ebp), %eax
	movl 16(%ebp), %ebx

	repeat:
		cmpl $0, %ebx
		je end
		
		pushl %eax
		pushl %ecx
		pushl %edx
		
		pushl %eax
		pushl %esi
		
		call load_product
		addl $8, %esp 

		popl %edx
		popl %ecx
		popl %eax

	decl %ebx
	jmp repeat


	end:
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

