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

int main(void) {

    int lines = 4;
    int columns = 6;

    int** resultMatrix;

    resultMatrix = new_matrix(lines, columns);

    printf("resultMatrix: %p\n", resultMatrix);


    int k;
    int j;
    for (k = 0; k < lines; k++) {
        for (j = 0; j < columns; j++) {
            printf("%d ", resultMatrix[k][j]);
        }
        printf("\n");
    }




    int i;
    for (i = 0; i < lines; i++) {
        free(*(resultMatrix + i));
    }
    free(resultMatrix);

    return 0;
}
