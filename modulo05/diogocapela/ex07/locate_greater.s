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

	# int locate_greater(Student* s, int minimum, int* greater_grades);
	.global locate_greater

locate_greater:
	
	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	# Mover o pointer do student struct para %esi
	movl FIRST_PARAMETER_OFFSET(%ebp), %esi

	# Mover o pointer do greater_grades para %edi
	movl THIRD_PARAMETER_OFFSET(%ebp), %edi

	# Mover o minimum para ebx
	movl SECOND_PARAMETER_OFFSET(%ebp), %ebx

	# Mover o pointer do array das notas antigas para %eax
	leal STUDENT_GRADES_OFFSET(%esi, 1), %edx

    # Iniciar o contador a 0
    movl $0, %ecx

	# Clean eax (notas que foram adicionadas)
	movl $0, %eax



	# esi - student
	# edi - greater_grades
	# ebx - minimum

	# ecx - contador, começa em 0

	# edx - old_grades

	# eax - numero de notas adicionadas (return)

start:

	# Comparar a nota que o aluno teve com o mínimo
	cmpl %ebx, (%edx)
	jg add_nota

add_nota_continue:

    # Incrementar o apontador (4 pq é apontador de ints)
    addl $4, %edx

    # Incrementar o contador
    incl %ecx

    # Ver se já iteramos 10 vezes
    cmpl $10, %ecx
    je end

    # Voltar ao início
	jmp start


add_nota:

	# Incrementar o resultador por 1
	incl %eax

	pushl %eax # TEMP VAR

    # Copiar o valor da nota para as greater grades
    movl (%edx), %eax
    movl %eax, (%edi)

	popl %eax # TEMP VAR

	# Incrementar o apontador das greater grades (4 pq é apontador de ints)
	addl $4, %edi

	jmp add_nota_continue

end:

	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret
