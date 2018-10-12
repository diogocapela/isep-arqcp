#include <stdio.h>

void compress_shorts(short* shorts, int n_shorts, int* integers)
{
	int i;
	int ratio = sizeof(int) / sizeof(short);
	int numb_of_ints = n_shorts / ratio;

	for(i = 0; i < numb_of_ints; i++)
	{
		*(integers + i) = *((int*) (shorts + (ratio * i)));
		//printf("%d\n", *(integers + i));
	}
}

int main() 
{
	short shorts[] = {0x1111, 0x2222, 0x3333, 0x4444};
	int n_shorts = 4;
	int integers[2];

	// o resultado tem q ser uma cena do genero 0x22221111 - mais correcto, byte menos significativo fica na zona mais isginifitcativa

	compress_shorts(shorts, n_shorts, integers);

	int i;
	for(i = 0; i < 2; i++)
	{
		printf("%x\n", integers[i]);
	}


	return 0;
}