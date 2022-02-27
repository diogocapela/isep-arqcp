#include  <stdio.h>
#include  <stdlib.h>
#include  <string.h>
#include "asm.h"
int  main(void)
{
	/* init  values  */
	const  int n=3; /*  number  of  vending  machines  */
		vmachine_t  machines [] = { /*  vending  machine  data */
		{0, 33, {255, 127, 63, 31, 15, 7}},
		{1, 30, {255, 7, 15, 31, 127, 7}},
		{2, 27, {255, 7, 15, 63, 63, 0}} };
	/*  products  after  loading 4 products 6 */
		/*printf("%d\n", machines[0].tnprod);
		int i =  load_product(&machines[0] , 5);
		
		printf("%d\n", machines[0].tnprod);
		printf("%d\n", machines[0].products[4]);


		load_product_quantity(&machines[0], 4, 2);
		printf("%d\n", machines[0].products[3]);*/

	
	int  product_expected [] = {127, 127, 15}, i;
	 //test  load_product_quantity (...)
	//note: product  6= products [5] 
	for (i=0; i<n; i++) {
		load_product_quantity (& machines[i], 6, 4);
		printf("Load  Machine %d; Total =%d; Products [5]=%d ",
		machines[i].id, machines[i].tnprod , machines[i]. products [5]);
		if (machines[i]. products [5] ==  product_expected[i])  
			printf("\t(OK)\n");
		else  printf("\t(NOK)\n");
	}
return (0);
}