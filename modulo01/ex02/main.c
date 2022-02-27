#include <stdio.h>

void fill_vec(int *vec, int n) {
    while((--n)>=0) scanf("%d",vec++);
    vec-=n;//restore vector value
}

int main(void){
    int vec[4];
    fill_vec(vec,4);//to be debugged
    for(int i=0;i<4;i++){//just for print
        printf("Valor %d: %d\n",i+1,vec[i]);
    }
    return 0;
}