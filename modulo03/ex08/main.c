#include <stdio.h>
#include "asm.h"

int even;
int num;
int* ptrvec;

// Implement the function int test_even(void) that tests if the number in the variable even is even.
// The function should return one (1) if it is even or zero (0) if it is
// odd. Use the previous function to implement a function int vec_sum_even(void)
// that returns the sum of all the even elements of an array of integers pointed by
// ptrvec, with num elements.

int main(void) {

	int even = 4;
	int num = 5;
	int vec[] = {1, 2, 3, 4, 5};

	ptrvec = vec;

	int result_test_even = test_even();

	int result_vec_sum_even = vec_sum_even();

	printf("result_test_even = %d\n", result_test_even);
	printf("result_vec_sum_even = %d\n", result_vec_sum_even);

	return 0;

}
