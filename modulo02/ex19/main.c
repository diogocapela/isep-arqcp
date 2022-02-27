#include <stdio.h>
#include "asm.h"

int code;
int currentSalary;

int main(void) {

	code=10;
	currentSalary=600;
	printf("Salary is %d, code is %d\n", currentSalary, code);
	int resultado = getSalary();
	printf("getSalary() = %d\n\n", resultado);

	code=11;
	currentSalary=500;
	printf("Salary is %d, code is %d\n", currentSalary, code);
	resultado = getSalary();
	printf("getSalary() = %d\n\n", resultado);

	code=12;
	currentSalary=400;
	printf("Salary is %d, code is %d\n", currentSalary, code);
	resultado = getSalary();
	printf("getSalary() = %d\n\n", resultado);

	code=14;
	currentSalary=300;
	printf("Salary is %d, code is %d\n", currentSalary, code);
	resultado = getSalary();
	printf("getSalary() = %d\n\n", resultado);

	return 0;

}