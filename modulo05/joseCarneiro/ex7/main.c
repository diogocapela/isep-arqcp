#include <stdio.h>
#include <string.h>
#include "asm.h"
int main( void ){
	
	Student s1;
	s1.age=20;
	s1.number=2;
	strcpy(s1.name, "jose");
	strcpy(s1.address, "rua");
	

	int grades[10] = {10,11,12,13,14,15,16,17,18,19};
	
	int greater_grades[10];
	Student *s1_ptr=&s1;

	update_grades(s1_ptr, grades);

	int minimum = 14;

	int numberOfGreater=locate_greater(s1_ptr, minimum, greater_grades);

	printf("%d\n", numberOfGreater);
	
	int i=0;
	for(i=0; i<numberOfGreater; i++){
		printf("%d\n", greater_grades[i]);
	}
	

	return 0;
}