#include <stdio.h>
#include "asm.h"


int main(void) {

	int num1=9;
	int v2=3;
	int *v1=&num1;

	printf("V1 and V2 initially are %d and %d\n", num1, v2);
	int res=dec_square(v1, v2);
	printf("After V1 is %d and V^2 is %d\n", num1,res);

	return 0;
}
