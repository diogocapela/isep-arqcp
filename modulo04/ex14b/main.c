#include <stdio.h>
#include "asm.h"

int main(void){
	
	int a=-1;
	int b=0;
	int pos=8;
	int res=join_bits(a,b,pos);
	

	printf("a is %d\n", a);
	printf("b is %d\n", b);
	printf("pos is %d\n", pos);
	printf("result in dec %d\n", res);
	printf("result in hexa %x\n", res);


	return 0;
}