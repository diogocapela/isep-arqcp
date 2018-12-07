#include <stdio.h>
#include "asm.h"


short int *ptrvec;
int num;

int main(void){
	
	short int long_array[]={100, 20, 200};
	num=3;
	ptrvec=long_array;

	int res=vec_zero();

	printf("%d\n", res);

	return 0;
}