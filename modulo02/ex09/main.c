#include <stdio.h>
#include "asm.h"

int op1=0x7FFFFFFF;
int op2=0X40000000;

int main(void){
	long long int result;
	result=sum2ints();
	printf("%x\n", op1);
	printf("%x\n", op2);
	printf("%lld\n", result);
	return 0;
}