#include "asm.h"

int rotate_left(int num, int nbits)
{
    unsigned int temp = (unsigned int)num;

    int i;
    for (i = 0; i < nbits; i++)
    {
        unsigned int result = 0x80000000 & temp;

        temp = temp << 1;

        if (result == 0x80000000)
        {
            temp+= 1;
        }
    }
    return (int)temp;
}
int rotate_right(int num, int nbits)
{
    unsigned int temp = (unsigned int)num;

    int i;
    for (i = 0; i < nbits; i++)
    {
        unsigned int result = 0x01 & temp;

        temp = temp >> 1;

        if (result == 1)
        {
            temp += 0x80000000;
        }
    }
    return (int)temp;
}
