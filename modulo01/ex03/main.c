#include <stdio.h>

void print_even(int *vec, int n)
{
	int i;
	for(i = 0; i < n; i++) {
		if(*vec % 2 == 0) {
			printf("%d\n", *vec);
		}
		vec++;
	}
}

int main()
{
	int array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	print_even(array, 10);
	return 0;
}