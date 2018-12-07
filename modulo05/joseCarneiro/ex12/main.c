#include <stdio.h>
#include <string.h>
#include <stdlib.h> 

int** new_matrix(int lines, int columns){

	int** matriz;
	matriz = (int**) calloc(lines, sizeof(int*));
	if(matriz == NULL){
		printf("Error  reserving  memory .\n"); exit (1);
	}

	int i=0; 
	for(i=0; i< columns; i++){
		*(matriz+i)= (int*) calloc(columns,	sizeof(int));
		if(matriz[i] == NULL){
			printf("Error  reserving  memory .\n"); exit (1);
		}
	}
	return matriz;
}

int main(void)
{
	int k=5, h=5;

	int **matriz;
	matriz=new_matrix(k,h);

	int i;
	int j;
	for(i=0; i<5; i++){
		for(j=0; j<5; j++){
			printf("%d ", matriz[i][j]);
		}
		printf("\n");
	}
	for(i=0; i<k; i++){
		free(*(matriz+i));
	}
	free(matriz);
	return 0;
}
