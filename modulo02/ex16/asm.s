.section .data
	.global A #int
	.global B #int
	.global n #int

.section .text
	.global somatorioOperation #int sum2ints()

somatorioOperation:

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
	movl A, %eax
	mull %eax   #putting a^2 in eax/edx
	movl $0, %ecx
	movl B, %ecx  
	divl %ecx   #dividing A^2/B and putting result in eax
	movl %eax, %esi #putting result in esi for further use

	movl $0, %edi
    movl n, %edi   #moving limit to edx

	movl $0, %ebx  #ebx will be i that will be incremented
	
	movl $0, %ecx  #ecx will be register where we will store our sum

	my_loop:
	cmpl %edi, %ebx  #comparing i with n to see if the for loop has ended
	jge end_my_loop

	movl $0, %eax
	movl %edi, %eax  #moving i to eax
	mull %eax  #doing i^2

	mull %esi #doing i^2*a^2/b

	addl %eax, %ecx #summing the previous result to what is already in ecx

	incl %ebx       #doing i++

	jmp my_loop
	
	end_my_loop:
	movl %ecx, %eax #moving contents of ecx to eax so we can return the value   

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
