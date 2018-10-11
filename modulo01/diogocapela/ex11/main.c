#include <stdio.h>
#include <stdlib.h>

void capitalizeWords(char *str)
{
	int i;
	int size = strlen(str);

	int capitalize = 1;

	for(i = 0; i < size; i++)
	{
		char letter = *(str + i);

		if(capitalize == 1) {
			letter = toupper(letter);
			capitalize = 0;
		}

		if(letter == ' ') {
			capitalize = 1;
		}

		printf("%c", letter);
	}

	printf("\n");
}



int main()
{
	char text[] = "The number must be saved";

	capitalizeWords(text);

	return 0;
}