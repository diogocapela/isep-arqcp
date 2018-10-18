#include <stdio.h>
#include "asm.h"



char first2Bytes = 0xbb;
char second2Bytes = 0xcc;

int main(void) {

	/*
	printf("first2Bytes: ");

	scanf(" %c", &first2Bytes);

	printf("second2Bytes ");

	scanf(" %c", &second2Bytes);
	*/
	

	short resultadoConcat = concatBytes();

	printf("concatBytes() = 0x%hx\n", resultadoConcat);

	return 0;

}