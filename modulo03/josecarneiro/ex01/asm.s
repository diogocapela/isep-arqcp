.section .data
	.global ptr1

.section .text
	.global zero_count

zero_count:
#returns  the  number  of  zerochars (’0’) in a string pointed by ptr1

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	#pushl %edi
	######################################################

	movl ptr1, %esi;    #moving adress stored in ptr to esi
	movl $0, %eax;	   #clean eax
	movl $0, %ebx	   #clean ebx	

	compare_letter:
	movb (%esi), %bl   #moving char to bl
	cmpb $48, %bl	 #comparing char to zero		
	
	je increase_count #if zero found jump		
	
	cmpb $0, %bl	  #if end of string jump to end	 
	je end
	
	continue_compare:
	incl %esi		   #move to next char
	jmp compare_letter #repeat loop
	

	increase_count:
	incl %eax        #increment pointer 
	jmp continue_compare
	
	end:
	# Restore Regsiters
	######################################################
	#popl %edi
	popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
