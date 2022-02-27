#include <stdio.h>
#include "asm.h"

int num = 23123;

// Resultado dá sempre 13

int main(void) {

	int result = computeResult();

	printf("computeResult() = %d\n", result);

	return 0;

}
