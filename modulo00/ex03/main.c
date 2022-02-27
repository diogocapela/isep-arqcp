#include <stdio.h>
#include "string_to_int.h"

int main (void) {

	char numero1String[100];
	char numero2String[100];

	printf("Introduza o primeiro número:\n");
	scanf("%s", numero1String);

	printf("Introduza o segundo número:\n");
	scanf("%s", numero2String);

    int numero1 = string_to_int(numero1String);
    int numero2 = string_to_int(numero2String);

    double average = (double) (numero1 + numero2) / 2;

    printf("%f\n", average);

	return 0;

}
