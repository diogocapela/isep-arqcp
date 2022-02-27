#include <stdio.h>

typedef union {
    char vec[32];
    float a;
    int b;
} Union_u1;

typedef struct {
    char vec[32];
    float a;
    int b;
} Struct_s1;

void printUnionSize(Union_u1 u) {
    printf("Tamanho Union_u1: %d\n", sizeof(u));
}

void printStructSize(Struct_s1 s) {
    printf("Tamanho Struct_s1: %d\n", sizeof(s));
}

int main(void){

    Union_u1 u;
    Struct_s1 s;

    printUnionSize(u);
    printStructSize(s);

	return 0;

}
