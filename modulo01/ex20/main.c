#include <stdio.h>
char * find_word(char* str, char* word, char* initial_addr){
    char* itr = initial_addr;
    //count word size
    int wordsize = 0;
    while((*(word+wordsize))!=NULL)
        wordsize++;
    while(*itr!=NULL){
        int i=0;
        if(*itr==*word){
            char flag = 1;
            for(;i<wordsize;i++){
                if(*(itr+i) == NULL || *(itr+i)!=*(word+i)){
                    if(wordsize>=i)
                        flag=0;
                    else
                        flag=1;
                    break;
                }
            }
            if(flag){
                return itr;
            }
        }
        itr++;
    }
    return NULL;
}


int main(void){

    return 0;
}