#include <stdio.h>
#include "media.h"

#define SIZE 5

int main() {

	double vec[SIZE] = {1,2,3,4,27};

	double conta = average_vetor(vec, SIZE);

	printf("%.2f\n", conta);

	return 0;
}