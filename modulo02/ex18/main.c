#include <stdio.h>
#include "asm.h"

int num;

// Returns:
//
// 1, if num is even and negative;
// 2, if num is odd and negative.
// 3, if num is even and positive;
// 4, if num is odd and positive;

// zero is POSITIVE

int main(void) {

	num=-12;
	printf("Number is %d\n", num);
	int result = checkEvenOddPositiveNegative();
	printf("checkEvenOddPositiveNegative() = %d\n", result);
	num=-13;
	printf("Number is %d\n", num);
	result = checkEvenOddPositiveNegative();
	printf("checkEvenOddPositiveNegative() = %d\n", result);
	num=8;
	printf("Number is %d\n", num);
	result = checkEvenOddPositiveNegative();
	printf("checkEvenOddPositiveNegative() = %d\n", result);
	num=5;
	printf("Number is %d\n", num);
	result = checkEvenOddPositiveNegative();
	printf("checkEvenOddPositiveNegative() = %d\n", result);


	return 0;

}
