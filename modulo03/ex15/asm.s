.section .data
	.global ptrvec #short int ptr
	.global num    # int


.section .text
	.global array_sort  #void void

# given the address of an array of integers pointed by ptrvec, with num elements, sorts the array in descending order.

 #int i, j; 
 #  for (i = 0; i < n-1; i++)       
  
#       // Last i elements are already in place    
#       for (j = 0; j < n-i-1; j++)  
#          if (arr[j] > arr[j+1]) 
#              swap(&arr[j], &arr[j+1]); 


array_sort:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	
	movl $0, %ecx  #ecx will be i
	movl $0, %ebx  #ebx will be j
	movl $0, %edx #edx will be j+1 
	movl $0, %eax
	movl num, %ecx  #check if empty array
	cmpl $0, %ecx
	je end

	movl ptrvec, %esi#doing num-1 for the loops

	decl %ecx

	first_loop:
		cmpl $0, %ecx
		je end
		movl $0, %ebx
		movl $1, %edx
		push %ecx
		second_loop:

			leal (%esi, %ebx, 4), %edi  #putting arr[j] in edi
			movl (%edi), %eax
			push %eax 
			leal (%esi, %edx, 4), %eax  #putting arr[j+1] in eax
			movl (%eax), %edi
			pop %eax 

			cmpl %eax, %edi             #doing if arr[j]>arr[i]
			
			jl no_switch
				
				movl %edi, (%esi, %ebx, 4)
				movl %eax, (%esi, %edx, 4)
				

			no_switch:
				incl %ebx          #increasing j
				incl %edx		   #incrasing j+1

				decl %ecx
				cmp $0, %ecx

			jne second_loop
		
		pop %ecx
		decl %ecx
		jmp first_loop

	end:
	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	
	
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
