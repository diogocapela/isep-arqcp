.section .data
	.global ptrsrc #short int ptr
	.global ptrdest
	.global num    # int


.section .text
	.global sort_without_reps 
	.global sort_ascending_array
	.global copy_array  #void void
	.global remove_reps

remove_reps:
	#for(i = 0; i < n; i++)
    #{
       # for(j = i+1; j < n; )
        #{
           #if(a[j] == a[i])
           # {
                #for(k = j; k < n; k++)
                #{
                   # a[k] = a[k+1];
                #}
                #n--;
           ## }
            #else
            #{
              #  j++;
           # }
        #}
   #  }

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	
	movl ptrdest, %edi
	movl num, %esi
	movl $0, %ebx
	movl $0, %eax
	movl $0, %edx

	cmpl $0, %esi
	je end


	first_loop:
		movl $0, %edx
		cmpl $0, %esi
		je end
		movl (%edi), %eax
		movl $0, %ebx
		movl $0, %ecx
		second_loop:
			
			incl %edx
		    addl $4, %ebx 	
			leal (%edi, %ebx, 4), %edi #putting arr[j] in edi
			movl (%edi), %ecx
			cmpl %eax, %ecx
			jne after
				decl %esi
				
				push %ebx
				push %ecx
				push %edi
				push %esi
				push %edx
				push %eax

				third_loop:
				
				 	movl %ebx, %ecx
				 	addl $4, %ecx
					leal (%edi, %ecx, 4), %edi
					movl (%edi), %eax
					movl %eax, (%edi, %ebx, 4)

					addl $4, %ebx
					incl %edx
					cmpl %edx, %esi
					jne third_loop

				pop %eax
				pop %edx		
				pop %esi
				pop %edi
				pop %ecx
				pop %ebx	

			after:
				incl %edx
				cmpl %edx, %esi
				je first_loop
				jmp second_loop

	end:
	movl num, %eax
	subl %esi, %eax
	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	
	
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
