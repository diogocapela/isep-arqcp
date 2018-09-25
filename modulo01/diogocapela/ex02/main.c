#include <stdio.h>

#define MAX 5

void fill_vec(int* vec, int n)
{
	int i;

	for(i = 0; i < n; i++)
	{
		printf("Introduz um número: ");
		scanf("%d", vec);
		vec++;
	}

	vec = vec - n;
}

int main()
{

	int vetor[MAX];

	fill_vec(vetor, MAX);

	int i;

	for(i = 0; i < n; i++)
	{
		printf("%d\n", *vec);
		vec++;
	}

	return 0;
}
