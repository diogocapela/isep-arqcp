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

void fill_matriz(int ** matriz, int l, int c){
	int i;
	int j;
	for(i=0; i<l; i++){
		for(j=0; j<c;j++){
			matriz[i][j]=1+(int) (10.0*rand()/(RAND_MAX+1.0));
		}
	}
}

int find_matrix(int **m, int y, int k, int num){
	int i;
	int j;
	for(i=0; i<y; i++){
		for(j=0; j<k;j++){
			if(m[i][j]==num){
				return 1;
			}
		}
	}
	return 0;
}

int main(void)
{	
	int num=5;
	int num2=12;
	int ** matriz;
	int i=5, j=5;
	matriz = new_matrix(i,j);
	fill_matriz(matriz, i, j);
	int res= find_matrix(matriz, i, j,num);
	int res2=find_matrix(matriz, i, j,num2);
	for(i=0; i<5; i++){
		for(j=0; j<5; j++){
			printf("%d ", matriz[i][j]);
		}
		printf("\n");
	}

	printf("num=%d, res=%d\n", num, res);
	printf("num2=%d, res2=%d\n",num2, res2);
	
	int k;
	for(k=0; k<i; k++){
		free(*(matriz+k));
	}
	free(matriz);
	return 0;
}
