#include <stdio.h>
#include "asm.h"


int A;
int B;

int main(void){
 	char result;

 	A=4;
 	B=2;
 	printf("A is %d and B is %d\n", A, B);
 	result=isMultiple();
 	if(0==result){
 		printf("%s\n", "A is multiple of B");
 	}else{
 		printf("%s\n", "A is not multiple of B");
 	}

 	A=3;
 	B=2;
 	printf("A is %d and B is %d\n", A, B);
 	result=isMultiple();
 	if(0==result){
 		printf("%s\n", "A is multiple of B");
 	}else{
 		printf("%s\n", "A is not multiple of B");
 	}


 	return 0;
}