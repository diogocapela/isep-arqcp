#include <stdio.h>
#include "asm.h"


int main(void) {

	int x=3;
	int res;
	res=cube(x);

	printf("%d^3=%d\n", x, res);

	return 0;
}
