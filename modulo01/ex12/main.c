#include <stdio.h>

int* find_char_in_string(char* _str, char _c, int* _vec)
{
	int i = 0;
	int k = 0;

	while(*(_str + i) != '\0')
	{
		char letra = *(_str + i);

		if(letra == _c) {
			*(_vec + k) = i;
			k++;
		}

		i++;
	}

	return _vec;
}

int main()
{
	char* str = "I am a string";
	char c = 'm';
	int vec[5];

	find_char_in_string(str, c, vec);

	int i;
	for(i = 0; i < 5; i++) {
		printf("Index of the letter %c: %d\n", c, vec[i]);
	}

	return 0;
}