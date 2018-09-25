#include <stdio.h>

#define BUFF_SIZE 100

void replaceToLower(char * str){
    char*tmp = str;
    while(*tmp != '\0'){
        if(*tmp>='A' && *tmp<='Z')
            *tmp-='A'-'a';
        tmp++;
    }
}

int main(void){
    char str[BUFF_SIZE];
    printf("Insira uma string para testar (max:%d bytes):",BUFF_SIZE);
    fgets(str,BUFF_SIZE,stdin);
    replaceToLower(str);
    printf("replacedToLower:%s\n",str);
    return 0;
}