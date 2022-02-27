#include <stdio.h>

void show_bytes(unsigned char *start, int len) {
	int i;

	for (i = 0; i < len; i++) {
		printf("%.2x", start[i]);  -->
		printf(" ");
	}

	printf("\n");
}

int main() {

	/*
	short v = -12345;
	unsigned short uv = (unsigned short) v;
	int x = (int) v;
	unsigned int ux = (unsigned int) uv;
	char str[] = "I learn a lot in ARQCP";
	*/

	short x = 0xAABB;  // 1010 1010 1011 0111 -> 2 bytes
	short mx = -x; // 0010 1010 1011 0111 -> 2 bytes

	printf("%d\n", x);
	printf("%d\n", mx);

	show_bytes((unsigned char*) &x, sizeof(short));
	show_bytes((unsigned char*) &mx, sizeof(short)); // -> faz cast para char para poder andar de byte a byte

	return 0;
}