#include <stdio.h>
#include "asm.h"


int main(void) {

	int num1=9;
	int num2=3;
	int num4;
	int *smaller=&num4;

	int res=sub_greater(num1,num2, smaller);

	printf("Subratction of %d and %d, is %d and the number in smaller is %d\n", num1,num2,res, *smaller);

	return 0;
}
