#include <stdio.h>
#include "asm.h"

int A=1;
int B=4;
int C=2;
int D=6;

int main(void){

	int result= sumAndDivision();
	printf("%s", "A is ");
	printf("%d\n", A);
	printf("%s", "B is ");
	printf("%d\n", B);
	printf("%s", "C is ");
	printf("%d\n", D);
	printf("%s", "D is ");
	printf("%d\n", D);
	printf("%s", "result is ");
	printf("%d\n", result);


	return 0;
}