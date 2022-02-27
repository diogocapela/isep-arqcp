#include <stdio.h>
#include "asm.h"


short int *ptrvec;
int num;
short int x;

int main(void){
	
	short int short_array[]={};
	num=0;
	ptrvec=short_array;

	int res1 = vec_diff();

	printf("%d\n", res1);

	/*int i;
	for(i=0; i<num; i++){
		printf("%d\n", short_array[i]);
	}*/
	//printf("%d\n", res1);


	return 0;
}