#include <stdio.h>
#include "string_to_int.h"

int string_to_int(char* str)
{
    int result = 0;

    while (*str)
    {
        result = result * 10 + (*str) - '0';
        ++str;
    }

    return result;
}
