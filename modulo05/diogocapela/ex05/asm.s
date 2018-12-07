# Registers:
# 				  EAX
#					 		AX							  ESI
#				 	   AH		AL                                      SI
# ######## ######## ######## ########     ######## ######## ######## ########
#
# 				  EBX
#					 		BX							  EDI
#				 	   BH		BL                                      DI
# ######## ######## ######## ########     ######## ######## ######## ########
#
# 				  ECX
#					 		CX							  EBP (Não Usar - Reservado para o Prólogo)
#				 	   CH		CL                                      BP
# ######## ######## ######## ########     ######## ######## ######## ########
#
# 				  EDX
#					 		DX							  ESP (Não Usar - Reservado para o Epílogo)
#				 	   DH		DL                                      SP
# ######## ######## ######## ########     ######## ######## ######## ########



# Type Sizes on IA32

# char			1 byte
# short			2 bytes
# int			4 bytes
# long 			4 bytes

# float 		4 bytes
# double 		??????????



# HOW TO: GET THE VALUE
# movl STUDENT_GRADES_OFFSET(%esi), %eax

# HOT TO: GET THE ADDRESS (ir buscar o apontador, posição de memória)
# leal STUDENT_GRADES_OFFSET(%esi, 1), %eax


.section .data

	# Constants

	.equ FIRST_PARAMETER_OFFSET, 8
	.equ SECOND_PARAMETER_OFFSET, 12



	.equ STUDENT_AGE_OFFSET, 0 			# char age; - 1 byte
	.equ STUDENT_NUMBER_OFFSET, 2		# short number; - 2 bytes
	.equ STUDENT_GRADES_OFFSET, 4		# int grades[10]; - 10 x 4 bytes
	.equ STUDENT_NAME_OFFSET, 44		# char name[80]; - 80 x 1 byte
	.equ STUDENT_ADDRESS_OFFSET, 124	# char address[120]; - 120 x 1 byte


.section .text

	# void update_address(Student* s, char* new_address)
	.global update_address

update_address:
	
	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	# Mover o pointer do student struct para %esi
	movl FIRST_PARAMETER_OFFSET(%ebp), %esi

	# Mover o pointer do new_address para %edi
	movl SECOND_PARAMETER_OFFSET(%ebp), %edi

	# Mover a string/char array/pointer para %eax
	leal STUDENT_ADDRESS_OFFSET(%esi, 1), %eax

start:

	# Mover o char da string para %bl
	movb (%edi), %bl

	# Check if we are at the end of the string
	cmpb $0, %bl

	# If we are, jump to the end
	je end

	# If string continues, copy the char to %eax
	movb %bl, (%eax)

	# Increment both string pointer and go back to the start (loop)
	incl %edi
	incl %eax
	jmp start

end:

	# When we finish the copy operations, move ZERO to the end of the new string!!!
	movb $0, (%eax)


	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret
