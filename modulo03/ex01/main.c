#include <stdio.h>
#include "asm.h"

char *ptr1;

int main(void){

	char str[] = "O Capela vai tirar 0 a tudo.";
	ptr1=str;
	int res=zero_count();
	printf("%d\n", res);
	return 0;
}