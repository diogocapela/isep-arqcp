#include <stdio.h>
#include <string.h>

int main(void) {

    // union serve para quando nao savemos que tipo de variavel vamos usar à priori

    union union_u1 {
        char vec[32];       /* 32 bytes */
        float a;            /* 4 bytes */
        int b;              /* 4 bytes */
    } u;

    union union_u1 *ptr = &u;

    strcpy(ptr->vec, "arquitectura de computadores");
    printf("[1]=%s\n", ptr->vec);

    ptr->a = 123.5;
    printf("[2]=%f\n", ptr->a);

    ptr->b = 2;
    printf("[3]=%d\n", ptr->b);


    printf("[1]=%s\n", ptr->vec);
    printf("[2]=%f\n", ptr->a);
    printf("[3]=%d\n", ptr->b);

    printf("Tamanho TOTAL da Union: %d\n", sizeof(u));

    return 0;

}