unsigned int x = 0xDEADBEEF;
short y = 0xFFFF; /* é um valor negativo pq o but mais à esq é um 1 */

int z = -1;


if(x > z) {
	printf("Hello");
}

if(x > y) {
	printf("World");
}