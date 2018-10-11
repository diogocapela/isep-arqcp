#include <stdio.h>
#include "asm.h"

int op1 = 0;
int op2 = 0;
int op3 = 0;
int op4 = 0;

int main(void) {

	printf("Valor op1:");
	scanf("%d", &op1);

	printf("Valor op2:");
	scanf("%d", &op2);

	printf("Valor op3:");
	scanf("%d", &op3);

	printf("Valor op4:");
	scanf("%d", &op4);
	
	int resultado = makeOperation();

	printf("makeOperation = %d - 0x%x\n", resultado, resultado);

	return 0;

}