#include <stdio.h>
#include "asm.h"

char A=0x7F;
short int B=0x7FFF;
int C=0x7FFFFFFF;
int D=0x1;


int main(void){
	long long result = ex8();
	printf("resultd %lld\n", result);
	printf("resultx %llx\n", result);
	return 0;
}