#include <stdio.h>
#include "ex14.h"

int main(void){
	
	int a=399;
	int b=339;
	int pos=4;
	int res=join_bits(a,b,pos);
	

	printf("a is %d\n", a);
	printf("b is %d\n", b);
	printf("pos is %d\n", pos);
	printf("result in dec %d\n", res);
	printf("result in hexa %x\n", res);


	return 0;
}