#include <stdio.h>
#include "asm.h"

char number = 0x44;
char number1 = 0x22;

int main(void){
	printf("%#X\n", number);
	printf("%#X\n", number1);
	short int number2;
	//primeiro é mais significativo portanto fica mais à direita
	number2=concatBytes();
	printf("%#X\n", number2);
	return 0;
}