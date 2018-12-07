#include <stdio.h>
#include "asm.h"

signed int* ptrvec;
int num = 3;

int main(void) {

	signed int array[] = {-1, 0, 2};

	ptrvec = array;

	keep_negatives();

	printf("array[0] = %d\n", array[0]);
	printf("array[1] = %d\n", array[1]);
	printf("array[2] = %d\n", array[2]);
	printf("array[3] = %d\n", array[3]);
	printf("array[4] = %d\n", array[4]);

	return 0;

}
