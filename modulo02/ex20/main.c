#include <stdio.h>
#include "asm.h"

int i;
int j;

int main(void){
 	int h;


 	//function f
 	i=2;
 	j=3;
 	printf("Function f, i is %d, j is %d\n", i,  j);
 	h=f();
 	printf("result is %d\n", h);

 	i=2;
 	j=2;
  	printf("Function f, i is %d, j is %d\n", i,  j);
 	h=f();
 	printf("result is %d\n\n", h);

 	
 	//function f2
 	i=3;
 	j=2;
 	printf("Function f2, i is %d, j is %d\n", i,  j);
 	h=f2();
 	printf("result is %d\n", h);

 	i=2;
 	j=3;
 	printf("Function f2, i is %d, j is %d\n", i,  j);
 	h=f2();
 	printf("result is %d\n\n", h);


 	//function f3
 	i=3;
 	j=3;
 	printf("Function f3, i is %d, j is %d\n", i,  j);
 	h=f3();
 	printf("result is %d\n", h);

 	i=2;
 	j=1;
 	printf("Function f3, i is %d, j is %d\n", i,  j);
 	h=f3();
 	printf("result is %d\n", h);

 	i=1;
 	j=2;
 	printf("Function f3, i is %d, j is %d\n", i,  j);
 	h=f3();
 	printf("result is %d\n\n", h);

	//function f4	
 	i=1;
 	j=2;
 	printf("Function f4, i is %d, j is %d\n", i,  j);
 	h=f4();
 	printf("result is %d\n", h);

 	i=6;
 	j=7;
 	printf("Function f4, i is %d, j is %d\n", i,  j);
 	h=f4();
 	printf("result is %d\n", h);



 	return 0;
}