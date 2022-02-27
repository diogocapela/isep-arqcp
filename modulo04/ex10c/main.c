#include <stdio.h>
#include "asm.h"


int main(void) {
	int x[]={1000, 100, 10};
	int num=3;
	int result=vec_count_bits_zero(x, num);
	printf("%d\n", result);
	return 0;
}
