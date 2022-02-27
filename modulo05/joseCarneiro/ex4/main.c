#include <stdio.h>
#include <string.h>
#include "ex4.h"
int main( void ){
	


	Student s1[5];
	Student *ptr_s;

	ptr_s=&s1[0];

	fill_student(ptr_s, 23, 20, "capela","rua");
	printf("%s\n", ptr_s->name);
	printf("%d\n", ptr_s->age);
	printf("%d\n", ptr_s->number);
	printf("%s\n", ptr_s->address);


	ptr_s=&s1[1];

	fill_student(ptr_s, 24, 21, "capela1","rua1");
	printf("%s\n", ptr_s->name);
	printf("%d\n", ptr_s->age);
	printf("%d\n", ptr_s->number);
	printf("%s\n", ptr_s->address);

	ptr_s=&s1[2];

	fill_student(ptr_s, 25, 22, "capela2","rua2");
	printf("%s\n", ptr_s->name);
	printf("%d\n", ptr_s->age);
	printf("%d\n", ptr_s->number);
	printf("%s\n", ptr_s->address);


	ptr_s=&s1[3];

	fill_student(ptr_s, 26, 23, "capela3","rua3");
	printf("%s\n", ptr_s->name);
	printf("%d\n", ptr_s->age);
	printf("%d\n", ptr_s->number);
	printf("%s\n", ptr_s->address);
	ptr_s=&s1[4];

	fill_student(ptr_s, 27, 24, "capela4","rua4");
	printf("%s\n", ptr_s->name);
	printf("%d\n", ptr_s->age);
	printf("%d\n", ptr_s->number);
	printf("%s\n", ptr_s->address);

	return 0;
}