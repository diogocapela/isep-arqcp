#include <stdio.h>
int func(int* var){
    int size = *var;
    int sum=0;
    for(int i=1;i<=size;i++){
        if(*(var+i)%2==0) sum+=*(var+i);
    }
    return sum;
}

int main(void){
    int var[] = {4,2,4,9,10};
    printf("sum:%d\n",func(var));
    return 0;
}