#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* new_str(char str[]) {

    int sizeOfString = strlen(str);

    char* ptr_char;

    ptr_char = (char*) malloc(sizeOfString * sizeof(char));

    int i = 0;
    for(i = 0; i < sizeOfString; i++){
        ptr_char[i] = str[i];
    }

    return ptr_char;
}

int main(void) {

    char* greaterGrades = "Hello";

    char* result;

    result = new_str(greaterGrades);
    

    printf("RESULTADO: %s\n", result);

    free(result);

    return 0;
}
