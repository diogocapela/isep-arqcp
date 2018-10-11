#include <stdio.h>

int main(void){
	int a = 1000000;
        int b = 1000000;
        long long c = (long long)a * (long long)b; //we tell to compiler to handle a and b as signed 64-bit values. this will garantee that no overflow will is observed.
	printf("%I64d\n",c);
	return 0;
}
