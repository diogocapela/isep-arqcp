#include <stdio.h>
#include <string.h>
#include "ex3.h"
int main( void ){
	
	Student *ptr_s;
	Student s;

	ptr_s=&s;

	fill_student(ptr_s, 23, 20, "capela","rua");
	printf("%s\n", ptr_s->name);

	return 0;
}