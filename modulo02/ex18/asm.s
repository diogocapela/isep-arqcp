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

##################################################
############## ADDIING EXAMPLE####################
# addb $10 , %al # adds 10 to the 8- bit AL register ; AL=AL +10
# addw %bx , %cx # adds the value of BX to CX (16 bits ); CX=CX+BX
# addl var1 , % eax # adds the 32- bit value in var1 to EAX ; EAX = EAX + var1
# addl %eax , % eax # adds EAX to itself ; EAX = EAX + EAX
##################################################

########### SUBTRACTING EXAMPLE #################
# subl $10 , % eax # subtract 10 to the current value of EAX; EAX =EAX -10
# subw %bx , %cx # subtract the value of BX to CX (16 bits ); CX=CX -BX
# subl var1 , % eax # subtract the 32- bit value in var1 to EAX ; EAX =EAX - var1
# subl %ecx , % eax # subtract ECX to EAX ; EAX =EAX - ECX
#################################################

################################################
########### INC AND DEC USAGE ##################
# incl % eax # EAX = EAX +1 (32 bits )
# incw %bx # BX=BX +1 (16 bits )
# decb %cl # CL=CL -1 (8 bits )
################################################

###############################################
############### EFLAGS #######################
# CF - carry flag (bit 0)
# Set on most significant bit carry or borrow; cleared otherwise

# PF - parity flag (bit 2)
# Set if least significant eight bits of result contain an even number of "1"bits; cleared otherwise

# ZF - zero flag (bit 6)
# Set if result is zero; cleared otherwise

# SF - sign flag (bit 7)
# Set equal to the most significant bit of result (0 if positive, 1 if negative)

# OF - overflow flag (bit 11)
# Set if result is too large (a positive number) or too small (a negative number, excluding its sign bit) to fit in destination operand; cleared otherwise
################################################

###############################################
########### UNSIGNED MULTIPLICATION ###########
# .global multest
# multest :
# ...
# movl $0 , %edx
# movl $0 , %ecx
# movl $0 , %eax
# movw $200 , %ax
# movw $2 , %cx
# multiply %cx by %ax
# result in %dx :% ax
# mulw %cx
# ...
# ret
##############################################

################ SIGNED MULTIPLICATION##########
# .global imultest
# imultest :
# ...
# movl $0 , %edx
# movl $0 , %ecx
# movl $0 , %eax
# movw $200 , %ax
# movw $2 , %cx
# multiply %ax by %cx
# result in %cx
# imulw %ax , %cx
# multiply 4 by %cx
# result in %dx
# imulw $4 , %cx , %dx
# ...
# ret
###################################################

###################################################
############## UNSIGNED DIVISION ##################

# dividendo
# --------- = quociente
# divisor



# movl $0 , %edx
# movl $0 , %ecx
# movl $0 , %eax
# dividend : ax
# movw $100 , %ax
# divisor : cl
# movb $3 , %cl

# divides %ax by %cl
# remainder in %ah
# quotient in %al
# divb %cl
# ...
# ret
####################################################

# Clean Registers:

# TODO

# the data section allows to declare initialized variables (coming from C - declared outside main)
.section .data

	# Global Variables
	.global num

.section .text # section identifier : code

	.global checkEvenOddPositiveNegative

checkEvenOddPositiveNegative:
	
		# Prologue
		########################################
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		########################################

		# Save Registers
		######################################################
		pushl %ebx
		pushl %esi
		pushl %edi
		######################################################

		movl 	num, 	%edx
		test 	$1, %edx			# checks if the lowest bit is set and if it is, the number is odd.
		jz 		number_is_even 		# jump if even = lowest bit clear = zero
		jnz 	number_is_odd		# jump if odd  = lowest bit set



	number_is_even:

		cmpl $0, %edx
		jge number_is_even_positive
		jl number_is_even_negative



	number_is_even_positive:

		movl $3, %eax
		jmp end_of_check




	number_is_even_negative:

		movl $1, %eax
		jmp end_of_check



	number_is_odd:

		cmpl $0, %edx
		jge number_is_odd_positive
		jl number_is_odd_negative


	number_is_odd_positive:

		movl $4, %eax
		jmp end_of_check



	number_is_odd_negative:

		movl $2, %eax
		jmp end_of_check

	end_of_check:



		# Restore Regsiters
		######################################################
		popl %edi
		popl %esi
		popl %ebx
		######################################################

		# Epilogue
	    ########################################
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		########################################

		ret









