#include <stdio.h>
#include "asm.h"



short variableToSwap = 0x00ff;

int main(void) {

	printf("Short variable to swap:");

	// TODO: Pq é q se for eu a inserir a variavel com o scanf não funciona?

	scanf("%x", &variableToSwap);
	
	int resultado = swapBytes();

	printf("swapBytes() = 0x%x\n", resultado);

	printf("Print signed 16bits variables: %hd\n", resultado);

	printf("Print unsigned 16bits variables: %hu\n", resultado);


	return 0;

}