#include <string.h>
#include "ex3.h"

void fill_student(Student *s, char age, short number, char *name,char *address)
{
	s->age=age;
	s->number=number;
	strcpy(s->name, "capela");
	strcpy(s->address, "rua");
}