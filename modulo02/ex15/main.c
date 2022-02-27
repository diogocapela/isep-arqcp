#include <stdio.h>
#include "asm.h"


int num1;
int num2;

int main(void){
 	//sum, subtraction, multiplication, division, modulus, powers of 2 and 3. 
	int result;
	char operand;
	_Bool error;
	error=1;

	
	do{
		printf("%s\n", "Which operation do you wish to do?");
		printf("%s\n", "press + for sum\n- for subtraction\n* for multiplication\n/ for division\n% for module\n^ for powers");

		scanf(" %c", &operand);
		switch(operand){
			case '+':
			printf("%s\n", "First number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num1);
			printf("%s\n", "Second number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num2);
			result=sum();
			printf("%d+%d=%d\n", num1, num2, result);
			error=0;
			break;

			case '-':
			printf("%s\n", "first number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num1);
			printf("%s\n", "second number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num2);
			result=subtract();
			printf("%d-%d=%d\n", num1, num2, result);
			error=0;
			break;

			case '*':
			printf("%s\n", "first number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num1);
			printf("%s\n", "second number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num2);
			result=multiplication();
			printf("%d*%d=%d\n", num1, num2, result);
			error=0;
			break;

			case '/':
			printf("%s\n", "first number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num1);
			printf("%s\n", "second number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num2);
			result=division();
			printf("%d/%d=%d\n", num1, num2, result);
			error=0;
			break;

			case '%':
			printf("%s\n", "first number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num1);
			printf("%s\n", "second number for the operation? Any character that is not a number will be interpreted as 0 ");
			scanf("%d", &num2);
			result=modulo();
			printf("%dMOD%d=%d\n", num1, num2, result);
			error=0;
			break;

			case '^':
			printf("%s\n", "Power 2 or 3?");
			scanf("%d", &num2);
				switch(num2){
					case 2:
					printf("%s\n", "Insert the number");
					scanf("%d", &num1);	
					result=powerOfTwo();
					printf("%d^2=%d\n", num1, result);
					error=0;
					break;

					case 3:
					printf("%s\n", "Insert the number");
					scanf("%d", &num1);
					result=powerOfThree();
					printf("%d^3=%d\n", num1, result);
					error=0;
					break;

					default: 
					printf("%s\n", "Not a valid number");
					break;
				}
			break;
			default: 
			printf("%s\n", "Not a valid operator. Please insert again\n\n");
			break;	
		}
    }while(1==error);
	

 	return 0;
}