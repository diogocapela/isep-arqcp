#include <stdio.h>

void swap(int* vec1, int* vec2, int size){
    int tmpvalue=0;
    size--;//allign with index access
    while(size>=0){
        tmpvalue=*((vec1)+size);//saved vec1 value
        *((vec1)+size)=*((vec2)+size);
        *((vec2)+size)=tmpvalue;
        size--;
    }
}

void printvect(int* v1, int* v2, int size){
    int i=0;
    for(;i<5;i++){
        printf("v1[%d]:%d\n",i,*((v1)+i));
    }
    for(i=0;i<5;i++){
        printf("v2[%d]:%d\n",i,*((v2)+i));
    }
}
int main(void){

    int v1[] = {1,2,3,4,5};
    int v2[] = {5,4,3,2,1};
    printvect(v1,v2,5);
    swap(v1,v2,5);
    printvect(v1,v2,5);

    return 0;
}