#include <stdio.h>
#include <string.h>

char *new_str(char str[80]){
	int size = strlen(str);
	char *str_ptr;
	str_ptr =(char *) malloc (size * sizeof(char));
	*str_ptr=str;
}
int main(void)
{
	char str[80]="Ola eu sou o ze",

	char *str_ptr;
	str_ptr=new_str(str);
	printf("%s", *str_ptr);
}
