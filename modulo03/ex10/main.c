#include <stdio.h>
#include "asm.h"

char* ptr1;
char* ptr2;
char* ptr3;

int main(void){
	
	char str1[]="Esta e uma string";
	char str2[]=", esta e outra";
	char str3[80];

	ptr1=str1;
	ptr2=str2;	
	ptr3=str3;
	
	str_cat();

	printf("%s\n", str1);
	printf("%s\n", str2);
	printf("%s\n", str3);
	
	return 0;
}