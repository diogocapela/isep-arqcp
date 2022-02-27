#include <stdio.h>
#include "asm.h"

unsigned int op1;
unsigned int op2;

int main(void){

	int result;
	op1=0xFFFFFFFF;
	op2=0X1;
	result=sum2ints();
	
	printf("%s", "com op1=0xFFFFFFFF e op2=0x1 ");
	if(result==1){
		printf("%s\n", "ativou carry");
	}else{
		if(result==0){
			printf("%s\n", "nao ativou carry nem overflow");
		}else{
			if(result==2)
			printf("%s\n", "ativou overflow");
		}
	}

	op1=0x7FFFFFFF;
	op2=0X1;
	result=sum2ints();
	
	printf("%s", "com op1=0x7FFFFFFF e op2=0x1 ");
	if(result==1){
		printf("%s\n", "ativou carry");
	}else{
		if(result==0){
			printf("%s\n", "nao ativou carry nem overflow");
		}else{
			if(result==2)
			printf("%s\n", "ativou overflow");
		}
	}

	op1=0x2;
	op2=0X1;
	result=sum2ints();
	
	printf("%s", "com op1=0x2 e op2=0x1 ");
	if(result==1){
		printf("%s\n", "ativou carry");
	}else{
		if(result==0){
			printf("%s\n", "nao ativou carry nem overflow");
		}else{
			if(result==2)
			printf("%s\n", "ativou overflow");
		}
	}


	return 0;
}