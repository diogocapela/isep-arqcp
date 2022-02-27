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


# Save Registers
######################################################
pushl %ebx
pushl %esi
pushl %edi
######################################################


# Clean Registers:

# TODO


# the data section allows to declare initialized variables (coming from C - declared outside main)
.section .data

	# Global Variables
	.global value_1
	.global value_2

.section .text # section identifier : code

	.global crossSumBytes

crossSumBytes:
	
	# Prologue
	########################################
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	########################################

	movl	$0,					%eax
	movw	value_1, 			%ax
	movw	value_2,			%bx
	addb 	%bh, 				%al 
	addb	%bl, 				%ah




	# Epilogue
    ########################################
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	########################################


	ret


# Restore Regsiters
######################################################
popl %edi
popl %esi
popl %ebx
######################################################


