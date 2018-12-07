#include <stdio.h>
#include "asm.h"


int main(void) {
	char d[] ="ola\n";
	char c[] = "ola\n";
	//char *a = "ola";
	//char *b = "ola";
	int res=test_equal(c, d);
	printf("%i\n",res);

	return 0;
}
