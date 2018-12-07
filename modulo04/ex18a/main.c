#include <stdio.h>
#include "ex18a.h"

int main(void){

	char v[]={3,5,11,12,7,4,0}; 

	int x = 0xf0301;

	int result = sum_multiples_x(v, x);

	printf("result = %d\n", result);

	return 0;
}