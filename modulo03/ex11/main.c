#include <stdio.h>
#include "asm.h"


long int *ptrvec;
int num;

int main(void){
	
	long long long_array[]={100, 1000, 2000};
	num=3;
	ptrvec=long_array;

	int res=vec_greater20();

	printf("%d\n", res);

	return 0;
}