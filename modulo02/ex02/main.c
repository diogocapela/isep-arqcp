#include <stdio.h>
#include "asm.h"

int op1=0;
int op2=0;

int main(void) {

	printf("Valor op1:");
	scanf("%d", &op1);
	printf("Valor op2:");
	scanf("%d", &op2);
	
	int resultado = sum();
	printf("sum = %d:0x%x\n", resultado, resultado);

	return 0;

}