#include <stdio.h>
#include <string.h>
#include "asm.h"
int main( void ){
	
	Student s1;
	s1.age=20;
	s1.number=2;
	strcpy(s1.name, "jose");
	strcpy(s1.address, "rua coco xixi");
	char* morada= "street";

	Student *s1_ptr=&s1;

	update_address(s1_ptr, morada);

	printf("%s\n", s1_ptr->address);


	return 0;
}