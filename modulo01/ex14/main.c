#include <stdio.h>
#include <stdlib.h>

void populate_array_of_100_ints(int* array)
{
	int i;

	for(i = 0; i < 100; i++)
	{
		// rand() % (max - min ) + min;
		*(array + i) = rand() % 20;
	}
}

int get_how_many_sets_of_three_consecutive_elements(int* array)
{
	int number = 0;
	// return number of elements that satisfy the condition vi < vi+1 < vi+2



	return number;
}

int main()
{
	int my_array[100];

	populate_array_of_100_ints(my_array);


	int i;
	for(i = 0; i < 10; i++)
	{
		printf("%d\n", my_array[i]);
	}


	return 0;
}