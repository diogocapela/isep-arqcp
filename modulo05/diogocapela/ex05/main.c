#include <stdio.h>
#include <string.h>
#include "asm.h"

int main(void){

    Student s;

	s.age = 28;
	s.number = 10;
	strcpy(s.name, "Diogo");
	strcpy(s.address, "Porto");

	char* newAddress = "Lisboa 123 123 123";

	Student* sPointer = &s;

	update_address(sPointer, newAddress);

	printf("%s\n", "Address updated!");
	printf("%s\n", sPointer->address);

	return 0;
}

