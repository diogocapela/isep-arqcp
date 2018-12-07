#   Special Characters:

#   . – starts an assembler directive
#   # – starts a comment
#   % – starts a register name
#   $ – starts a value

# Data Types:

#   .octa – 128 bits (16 bytes) integer
#   .quad – 64 bits (8 bytes) integer
#   .double – floating point number with double precision (8 bytes)
#   .long – 32 bits (4 bytes) integer
#   .int – 32 bits (4 bytes) integer
#   .float – floating point number (4 bytes)
#   .short – 16 bits (2 bytes) integer
#   .byte – 8 bits
#   .ascii – string
#   .asciz – string automatically terminated by zero


# Constants:
#   .equ FACTOR, 3


# Sections:
#   .section .data - the data section allows to declare initialized variables (coming from C - declared outside main)
#   .section .bss - the bss section is used to define uninitialized memory areas
#   .section .text - the text section has the assembly instructions


# Registers:
#
# 				  EAX (4bytes)
#					 		AX (2bytes)					  ESI
#				 	   AH(1 byte)AL(1byte)                              SI
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

# Alert:

#   122 – the content of memory address 122
#   $122 – the number 122
#
#   variable – the contents pointed by memory address in variable
#   $variable – the memory address of the label

# Sizes:

#   b - 8 bits
#   w - 16 bits
#   l - 32 bits



# EM HEXADECIMAL DUAS LETRAS SAO 2 BYTES  - ALERTTTTT : http://calc.50x.eu/



# Bitwise Operations:

# NOT: Bits that are 0 become 1, and those that are 1 become 0. (Swaps)
######################################################
# NOT 0111  (decimal 7)
#   = 1000  (decimal 8)
#
# notl %edx ; edx ≔ ¬edx

# AND: If both bits in the compared are 1, the bit in the resulting binary representation is 1 (1 × 1 = 1); otherwise, the result is 0
######################################################
#     0101 (decimal 5)
# AND 0011 (decimal 3)
#   = 0001 (decimal 1)
#
# andl %edx, %ecx ; ecx ≔ edx ∧ ecx


# OR: The result in each position is 0 if both bits are 0, while otherwise the result is 1.
######################################################
#     0101 (decimal 5)
#  OR 0011 (decimal 3)
#   = 0111 (decimal 7)
#
# orl  %edx, %ecx ; ecx ≔ edx ∨ ecx

# XOR: The result in each position is 1 if only the first bit is 1 or only the second bit is 1, but will be 0 if both are 0 or both are 1.
######################################################
#     0101 (decimal 5)
# XOR 0011 (decimal 3)
#   = 0110 (decimal 6)
#
# xorl %edx, %ecx ; ecx ≔ edx ⊕ ecx


##################################################################################################################################


# the data section allows to declare initialized variables (coming from C - declared outside main)
.section .data

	# Global Variables

	# .global var1
	# .global var2

.section .text

	.global sum_n # int sum_n(int n);

sum_n:



	######################################################	
	# Prologue
	########################################
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	########################################
	######################################################
	# CALLE: Save Registers
	######################################################
	# pushl %ebx
	# pushl %esi
	# pushl %edi
	######################################################



	######################################################
	# Parametros
	######################################################
	movl 8(%ebp), %edx 			# move the first parameter to EDX (int)
	# movl 12(%ebp), %eax
	# movl 16(%ebp), %eax
	######################################################



	movl $0, %eax 	# clean EAX

	movl $1, %ecx 	# move the value 1 no ECX (counter)

	cmpl $0, %edx 	# compare our parameter variable with ZERO
	
	jle end			# if lower than ZERO, go to the end


start:

	addl %ecx, %eax 	# add the counter to EAX 

	cmpl %ecx, %edx 	# compare our counter with our parameter variable

	je	end				# jump to the end if they are equal

	incl %ecx 			# else increment the counter

	jmp start 			# go back to the start

end:





















	# ****************************************************
	# CALLER: Save Registers
	# ****************************************************
	# pushl %eax
	# pushl %edx
	# pushl %ecx
	# ****************************************************



	# addl $12, %esp 		#jump params (3x4Bytes)



	# ****************************************************
	# CALLER: Restore Regsiters
	# ****************************************************
	# popl %ecx
	# popl %edx
	# popl %eax
	# ****************************************************











	######################################################
	# CALLE: Restore Regsiters
	######################################################
	# popl %edi
	# popl %esi
	# popl %ebx
	######################################################
	######################################################
	# Epilogue
    ########################################
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	########################################




	ret

