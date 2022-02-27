.section .data
	.global currentTemperature #short
	.global desiredTemperature #short


.section .text
	.global timeForTemperatureChange #int timeForTemperatureChange()

timeForTemperatureChange:

#three minutes to decrease one Celsius degree;
#two minutes to increase one Celsius degree.
#given the current and the desired temperatures, computes the time (in seconds) required to change to the desired temperature.
#function should return the computed result as a 32-bit value
	

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	#pushl %edi
	######################################################
	movl $0, %ebx
	movw currentTemperature, %bx
	movl $0, %ecx
	movw desiredTemperature, %cx
	movl $0, %eax
	movl $0, %esi

	cmpw %bx, %cx
	jg timeForIncreasing 
	jl timeForDecrasing
	je noChange

	timeForIncreasing:
	subw %bx, %cx  #subtract current temperature to desired temperature, keep value in desired
	movl %ecx, %eax
	movl $2, %esi
	mull %esi
	jmp end

	timeForDecrasing:
	subw %cx, %bx  #subtract desired temperature to current temperature, keep value in current
	movl %ebx, %eax
	movl $3, %esi
	mull %esi
	jmp end

	noChange:
	movl $0, %eax
	jmp end


	end:

	# Restore Regsiters
	######################################################
	#popl %edi
	popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
