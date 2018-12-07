#include <stdio.h>
#include "asm.h"

short int number = 0xAABB;

int main(void){
	printf("%#X\n", number);
	number=swapBytes();
	printf("%#X\n", number);
	return 0;
}