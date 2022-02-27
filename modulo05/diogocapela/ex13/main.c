#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int** new_matrix(int lines, int columns) {

    int** matrix;

    matrix = (int**) calloc(lines, sizeof(int*));

    int i;
    for(i = 0; i < lines; i++) {
        *(matrix + i) = (int*) calloc(columns, sizeof(int));
        if(matrix[i] == NULL) {
            printf("Error reserving memory.\n");
            exit(1);
        }
    }

    return matrix;
}

int find_matrix(int** __matrix, int y, int k, int num) {

    
    
    if(*(*(__matrix + y) + k) == num) {
        return 1;
    }

    return 0;
}

int main(void) {

    int lines = 4;
    int columns = 6;

    int** resultMatrix;

    resultMatrix = new_matrix(lines, columns);

    printf("resultMatrix: %p\n", resultMatrix);


    // Add random numbers to matix


    int r;
    int h;
    for (r = 0; r < lines; r++) {
        for (h = 0; h < columns; h++) {
            resultMatrix[r][h] = rand() % 99 + 1;
        }
    }


    resultMatrix[0][0] = 10;

    // Print matrix

    int k;
    int j;
    for (k = 0; k < lines; k++) {
        for (j = 0; j < columns; j++) {
            printf("%d ", resultMatrix[k][j]);
        }
        printf("\n");
    }






    int novo_resultado = find_matrix(resultMatrix, 0, 0, 10);

    printf("NOVO RESULTADO: %d", novo_resultado);
    printf("\n");



    // Free memory

    int i;
    for (i = 0; i < lines; i++) {
        free(*(resultMatrix + i));
    }
    free(resultMatrix);

    return 0;
}
