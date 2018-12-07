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
	.equ THIRD_PARAMETER_OFFSET, 16




	.equ STUDENT_AGE_OFFSET, 0 			# char age; - 1 byte
	.equ STUDENT_NUMBER_OFFSET, 2		# short number; - 2 bytes
	.equ STUDENT_GRADES_OFFSET, 4		# int grades[10]; - 10 x 4 bytes
	.equ STUDENT_NAME_OFFSET, 44		# char name[80]; - 80 x 1 byte
	.equ STUDENT_ADDRESS_OFFSET, 124	# char address[120]; - 120 x 1 byte


.section .text

	# int count_odd_matrix(int** m, int y, int k);
	.global count_odd_matrix

count_odd_matrix:

	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	# int** m -> %esi
	movl FIRST_PARAMETER_OFFSET(%ebp), %esi

	# int y -> %edx
	movl THIRD_PARAMETER_OFFSET(%ebp), %edx

	# int k -> %ebx
	movl SECOND_PARAMETER_OFFSET(%ebp), %ebx

    # clear EAX
    movl $0, %eax

    run_matix_1:
        run_matrix_2:

            # get the address of the start of the cusrrent line
            movl (%esi ,%edx ,4), %edi  # m[i][0]

            # get the value of the address into EDI
            pushl %esi
            movl (%edi), %esi
            movl %esi, %edi
            popl %esi

            # verificar se o número é impar
            andl $1, %edi
            cmpl $1, %edi

            # se for igual é impar
            jne is_even_so_continue

            # is odd, so increment
            incl %eax

            is_even_so_continue:

            addl $4, %ebx

            jp run_matrix_2


            # go to the next line (k times + 1)
            movb %bl, %cl
            shll %cl, %edx
            shll $1, %edx

end:

	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret
