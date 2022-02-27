#include <stdio.h>
#include "asm.h"

char* ptr1;

int main(void) {

	char textArray[] = "This is a text wit00h 0 on";

	ptr1 = textArray;

	int result = zero_count();

	printf("result() = %d\n", result);

	return 0;

}