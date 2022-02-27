#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num=5;


int main(void){

	int int_array[]={1,2,3,4,5};

	ptrvec = int_array;
	vec_add2();

	int i;
	for(i=0; i<num; i++){
		printf("%d\n", int_array[i]);
	}




	return 0;
}