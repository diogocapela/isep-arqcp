#include <stdio.h>
#include "asm.h"

int main(void) {


	int number = 0xffffffff;

	int* prt = &number;

	int pos = 0;

	int result = activate_bit(int *ptr, int pos);

	printf("result = %d\n", result);

	return 0;

}
