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
	Student *s1_ptr=&s1;

	update_grades(s1_ptr, grades);
	
	int i=0;
	for(i=0; i<10; i++){
		printf("%d\n", s1_ptr->grades[i]);
	}
	

	return 0;
}