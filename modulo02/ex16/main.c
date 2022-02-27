#include <stdio.h>
#include "asm.h"

int A=2;
int B=2;
int n=2;


int main(void){
 	printf("A is %d, B is %d, n is %d\n", A,B,n);
 	int result = somatorioOperation();
 	printf("%d\n", result);
	return 0;
}