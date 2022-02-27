#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "main.h"

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
    

    int** matrix;
    


    int lines = 3;
    int columns = 5;

    matrix = new_matrix(lines, columns);

    int i;
    int k;
    for(i = 0; i < lines; i++) {
        for(k = 0; k < columns; k++) {
            matrix[i][k] = 2;
        }
    }

    int result = count_odd_matrix(matrix, lines, columns);

    printf("result: %d", result);
    printf("\n");

    // Free memory

    int j;
    for (j = 0; j < lines; j++) {
        free(*(matrix + j));
    }
    free(matrix);

    return 0;
}
