#include <stdio.h>
#include <string.h>
#include "asm.h"

int main(void) {
	
	structA sA;
	structA sA2;
	structB sB;


	structA *ptr_a = &sA2;	
	structB *ptr_b = &sB;
	sA.x=20;
	sA.y=10;
	

	ptr_a->x=1;	
	ptr_a->y=2;	
	ptr_b->a=sA;
	ptr_b->b=ptr_a;

	short res1;
	res1= fun1(ptr_b);
	printf("%d\n", res1);

	ptr_b->z=30;
	short res2;
	res2 = fun2(ptr_b);
	printf("%d\n", res2);

	short * res3;
	res3 = fun3(ptr_b);
	printf("%p\n", res3);
	printf("%p\n", &ptr_b->z);


	short res4;
	res4 = fun4(ptr_b);
	printf("%d\n", res4);


	return 0;
}