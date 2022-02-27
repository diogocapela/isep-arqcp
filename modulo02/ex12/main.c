#include <stdio.h>
#include "asm.h"


int height;
int base;

int main(void){
	int area;
	height=4;
	base=5;
	printf("height is %d, base is %d\n", height, base);
	area=getArea();
	printf("The area of the triangle is %d\n", area);

 	return 0;
}