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
	.global op1
	.global op2

	# Constants
	.equ CONST, 15



.section .text # section identifier : code

	.global makeOperation # int makeOperation(void)



makeOperation:
	
	# Prologue
	########################################
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	########################################

	movl $CONST, 	%eax # move CONST to eax
	subl op1, 		%eax # substract op1 from eax
	movl $CONST, 	%ebx # move CONST to ebx
	subl op2,		%ebx # subtract op2 from ebx
	subl %ebx,		%eax # subtract ebx from eax

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


