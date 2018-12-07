#include <stdio.h>
#include "asm.h"

short int number = 0xFAA;
short int number1 = 0x111;

int main(void){
	printf("%#X\n", number);
	printf("%#X\n", number1);
	number=crossSumBytes();
	printf("%#X\n", number);
	return 0;
}