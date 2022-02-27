#include <stdio.h>
#include "asm.h"


int op1=0;
int op2=0;
int res3=0;

int main(void) {
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	res3 = sum_and_subtract_constant();
	printf("sum and subtract constant = %d:0x%x\n", res3,res3);
	return 0;
}