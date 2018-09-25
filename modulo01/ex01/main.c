#include <stdio.h>

int main()
{
	int x = 5;
	int* xPtr = &x;
	short y = *xPtr + 3;
	int vec[] = {10, 11, 12, 13};

	printf("Valor de X: %d\n", x);
	printf("Valor de Y: %d\n", y);

	printf("Endereço de X: %p\n", &x);
	printf("Endereço de xPtr: %p\n", &xPtr);

	printf("The value pointed by xPtr: %d\n", *xPtr);

	printf("Endereço de vec[]: %p\n", vec);

	int contador = 0;

	int tamanhoVetor = (sizeof(vec) / sizeof(int));

	printf("\n");

	while(contador < tamanhoVetor)
	{
		printf("Valor de vec[%d]: %d\n", contador, vec[contador]);
		printf("Endereço de vec[%d]: %p\n", contador, &vec[contador]);
		contador++;
	}

	return 0;
}