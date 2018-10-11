#include <stdio.h>

int sumOfEvenElements(int* arrayPointer) {
	int sum = 0;
	int size = *arrayPointer;
	int i;

	for(i = 1; i < size; i++) {
		if(*(arrayPointer + i) % 2 == 0) {
			sum = sum + *(arrayPointer + i);
		}
	}

	return sum;
}

int main() {
	int array[] = {5, 1, 2, 1, 2};

	int sum = sumOfEvenElements(array);

	printf("%d\n", sum);

	return 0;
}