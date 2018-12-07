#include "asm.h"

int count_bits_zero(int x)
{
    int numberBits0 = 0;

    int i;

    for (i = 0; i < sizeof(int) * 8; i++)
    {

        int result = x & 0x01;

        if (result == 0)
        {
            numberBits0++;
        }
        
        x = x >> 1;
    }

    return numberBits0;
}
