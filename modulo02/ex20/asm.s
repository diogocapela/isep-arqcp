.section .data
	.global i
	.global j


.section .text
	.global f   #int
	.global f2  #int
	.global f3  #int
	.global f4  #int

f:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	#pushl %esi
	#pushl %edi
	######################################################
 	movl $0, %eax
 	movl $0, %edx
 	movl $0, %ebx
 	movl $0, %ecx
 	movl i, %ebx
 	movl j, %ecx
 	
 	cmpl %ecx, %ebx   #comparing
 	je isEqual

 	addl %ecx, %ebx  #adding i and j
 	movl %ebx, %eax  #moving result to eax
 	subl $1, %eax    #doing result -1
 	jmp end



 	isEqual:
	 	subl %ecx, %ebx    #doing i-j
	 	movl $1, %eax
	 	addl %ebx, %eax   #doing result +1
	 	jmp end



 	end:
		# Restore Regsiters
		######################################################
		#popl %edi
		#popl %esi
		popl %ebx
		######################################################
		# epilogue
		movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
		popl %ebp        #  restore the previous stack frame pointer
		ret


f2:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	#pushl %esi
	#pushl %edi
	######################################################
	movl $0, %eax
 	movl $0, %edx
 	movl $0, %ebx
 	movl $0, %ecx
 	movl i, %ebx
 	movl j, %ecx

 	cmpl %ecx, %ebx   #compareing
 	jg isGreater

 	incl %ecx       #doing j++
 	jmp end2


 	isGreater:	
	 	decl %ebx  #doing i--
	 	jmp end2

 	end2:
	 	movl %ecx, %eax     
	 	mull %ebx     #doinf i*j
	 
		# Restore Regsiters
		######################################################
		#popl %edi
		#popl %esi
		popl %ebx
		######################################################
		# epilogue
		movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
		popl %ebp        #  restore the previous stack frame pointer
		ret


f3:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	movl $0, %eax
 	movl $0, %edx
 	movl $0, %ebx
 	movl $0, %ecx
 	movl i, %ebx
 	movl j, %ecx

 	cmpl %ecx, %ebx         #comparing
 	jge isGreaterOrEqual
 	
 	movl %ebx, %esi     
 	addl %ecx, %esi    #esi is h
 	movl %esi, %edi
 	addl $2, %edi      #edi is g


 	isGreaterOrEqual:
	 	movl %ecx, %eax        
	 	mull %ebx               #doing i*j
	 	movl %eax, %esi 		#esi is h		
	 	incl %ebx				#doing i++
	 	movl %ebx, %edi			#edi is g
	 	jmp end3


 	end3:
	 	movl $0, %eax       #eax is r
	 	movl %edi, %eax 
	 	divl %esi           #doing r=g/h

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

f4:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	movl $0, %eax
 	movl $0, %edx
 	movl $0, %ebx
 	movl $0, %ecx
 	movl i, %ebx
 	movl j, %ecx
 	movl $0, %esi
 	movl %ecx, %esi
 	addl %ebx, %esi #doing i+j

 	movl $0, %edi
 	movl $10, %edi

 	cmpl %esi, %edi        #comparing
 	jg greaterThanTen
	 	
 	movl %ecx, %eax
 	mull %eax
 	movl $0, %edi
 	movl $3, %edi
 	divl %edi
 	jmp end4





 	greaterThanTen:
	 	movl %ebx, %eax
	 	mull %eax
	 	movl $0, %edi
	 	movl $4, %edi
	 	mull %edi
	 	jmp end4

 	end4:
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

