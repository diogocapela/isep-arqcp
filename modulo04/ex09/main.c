#include <stdio.h>
#include "asm.h"

int main(void) {

	// int calc(int a, int *b, int c);
	int a = 2;
	int* b = {1};
	int c = 3;

	int result = calc(a, b, c);

	printf("result = %d\n", result);

	return 0;

}
