#ifndef  ASM_H  // avoid  multiple  include
#define  ASM_h
/*  Structure  to hold  the  information  about a
vending  machine; Each  vending  machine  sells 6 products  */
typedef  struct{
short  id; /*  machine  id   */
int  tnprod; /*  total  number  of  products  */
unsigned  char  products [6]; /*  array  representing  available  products  */
} vmachine_t;
/*  Function  implemented  in  Assembly; loads a product  into  the
machine  passed  as  argument  */
int  load_product(vmachine_t *vmachine , char  prod);
/*  Function  implemented  in  Assembly; loads ’qtd’ of  product  into  the
machine  passed  as  argument  */
int  load_product_quantity(vmachine_t *vmachine , char prod , int qtd);
#endif