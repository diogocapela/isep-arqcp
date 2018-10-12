#include <stdio.h>
#include "asm.h"

short variableToSwap = 0;

int main(void) {

	printf("Short variable to swap:");
	scanf("%d", &variableToSwap);
	
	int resultado = swapBytes();

	printf("swapBytes() = %d - 0x%x\n", resultado, resultado);

	printf("Print signed 16bits variables: %hd\n", resultado);

	printf("Print unsigned 16bits variables: %hu\n", resultado);

	return 0;

}