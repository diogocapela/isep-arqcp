#include <stdio.h>
#include <string.h>
#include <stdlib.h> 
#include "asm.h"

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

void fill_matriz(int ** matriz, int l, int c){
	int i;
	int j;
	for(i=0; i<l; i++){
		for(j=0; j<c;j++){
			matriz[i][j]=1+(int) (10.0*rand()/(RAND_MAX+1.0));
		}
	}
}


int main(void)
{	
	int ** matriz;
	int i=5, j=5;
	matriz = new_matrix(i,j);
	for(i=0; i<5; i++){
		for(j=0; j<5; j++){
			matriz[i][j]=1;	
		}
		
	}
	for(i=0; i<5; i++){
		for(j=0; j<5; j++){
			printf("%d ", matriz[i][j]);
		}
		printf("\n");
	}

	int count = count_odd_matrix(matriz, i, j);
	printf("res= %d\n", count);

	
	int k;
	for(k=0; k<i; k++){
		free(*(matriz+k));
	}
	free(matriz);
	return 0;
}
