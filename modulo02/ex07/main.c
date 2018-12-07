#include <stdio.h>
#include "asm.h"



short value_1 = 0xFAA;
short value_2 = 0x111;

// Resultado deve ser: 0x20AB

int main(void) {

	int result = crossSumBytes();

	printf("crossSumBytes() = 0x%hx\n", result);

	return 0;

}