#include <stdio.h>
#include "asm.h"


int *ptrvec;
int num;


int main(void){
	
	int int_array[]={3,4,5,1,2};
	num=5;
	ptrvec=int_array;


 	array_sort();
	
	int i;
	for(i=0; i<num; i++){
		printf("%d\n", int_array[i]);
	}


	return 0;
}