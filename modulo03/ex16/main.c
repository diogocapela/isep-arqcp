#include <stdio.h>
#include "asm.h"


int *ptrsrc;
int *ptrdest;
int num;


int main(void){
	
	int int_array[]={3,3,4,5,1,2};
	int dest_array[6];
	ptrdest=dest_array;
	num=6;
	ptrsrc=int_array;

	int res = sort_without_reps();
	
	int i;
	for(i=0; i<num; i++){
		printf("%d\n", dest_array[i]);
	}
	printf("%d\n", res);

	return 0;
}