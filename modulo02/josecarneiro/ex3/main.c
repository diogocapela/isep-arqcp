#include <stdio.h>
#include "asm.h"
#include "asm1.h"
int op1=0, op2=0, op3=0, op4=0, res=0, res2=0;
int main(void) {
printf("Valor op1:");
scanf("%d",&op1);
printf("Valor op2:");
scanf("%d",&op2);
printf("Valor op3:");
scanf("%d",&op3);
printf("Valor op4:");
scanf("%d",&op4);
res=sum();
res2=sum_and_subtract();
printf("sum = %d:0x%x\n", res,res);
printf("sum and subtract = %d:0x%x\n", res2,res2);
return 0;
}