#include <stdio.h>

int is_little_endian(){
    unsigned int x=0xdeadbeef;
    unsigned char *ptr = ((unsigned char*)&x);
    if(((unsigned char*)ptr[0])==0xef) return 0; else return 1;
}

int main(void){
    printf("%d\n",is_little_endian());
    return 0;
}