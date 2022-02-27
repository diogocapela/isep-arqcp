#include <stdio.h>
#include "asm.h"


int main(void) {

	int a=3;
	int b=9;
	int c=1;

	int res=smallest( a, b, c);

	printf("The smallest of the number %d, %d, %d is %d\n", a,b,c,res);

	return 0;
}
