#include <stdio.h>

void fill_vector(int* vec) {

	int i;

	for(i = 0; i <= 5; i++) {
		printf("Introduza o número %d: ", i);
		scanf("%d", &vec[i]);
	}

}



int main (void) {

	int vector[5];


    fill_vector(vector);

    printf("\n%d\n", vector[0]);

	return 0;

}

