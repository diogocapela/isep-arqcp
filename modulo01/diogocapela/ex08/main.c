#include <stdio.h>

int main() {

	char c = -3; // 0xF
	short sc = (short) c; // 0000 1100
	int x = -17; // 1000 0000 0001 0101  ????
	unsigned int ux = x;

	printf("Decimmal: %d | Hexadecimal: %x\n", c, c);
	printf("Decimmal: %d | Hexadecimal: %x\n", sc, sc);
	printf("Decimmal: %d | Hexadecimal: %x\n", x, x);
	printf("Decimmal: %u | Hexadecimal: %x\n", ux, ux);

	return 0;
}
