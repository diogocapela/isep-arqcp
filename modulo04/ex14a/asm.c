#include "asm.h"

int join_bits(int a, int b, int pos)
{
    unsigned int aTemp = (unsigned int) a;
    unsigned int bTemp = (unsigned int) b;

    unsigned int aMask = 1;
    int i;

    for (i=0; i< pos; i++)
    {
        aMask = aMask << 1;
        aMask++;
    }

    unsigned int bMask = aMask ^ 0xffffffff;

    aTemp = aTemp & aMask;
    bTemp = bTemp & bMask;

    return (int) (aTemp | bTemp);

}