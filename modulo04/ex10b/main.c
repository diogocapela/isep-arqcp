#include <stdio.h>
#include "asm.h"


int main(void) {
	int x=1000;
	int result=count_bits_zero(x);
	printf("%d\n", result);
	return 0;
}
