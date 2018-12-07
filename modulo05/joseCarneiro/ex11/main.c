#include <stdio.h>
#include <string.h>
#include <stdlib.h> 

char* new_str(char str[80]){
	int size = strlen(str);
	char *str_ptr;
	str_ptr =(char*) malloc (size * sizeof(char));
	int i=0;
	for(i=0; i<size; i++){
		str_ptr[i]=str[i];
	}
	return str_ptr;
}
int main(void)
{
	char *str="Ola eu sou o ze";

	char *str_ptr;
	str_ptr=new_str(str);

	printf("%s\n", str_ptr);
	free(str_ptr);
	return 0;
}
