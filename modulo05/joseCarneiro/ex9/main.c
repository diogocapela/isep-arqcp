#include <stdio.h>
#include <string.h>
#include "asm.h"
int main( void ){
	
	s2 s;
	s2 *s_ptr=&s;

	short vw[3]={1,2,3};
	int vj=10;
	char vc[3]="ola";

	fill_s2(s_ptr ,vw ,vj, vc);

	pritnf("%d\n", s_ptr->w[0]);
	pritnf("%d\n", s_ptr->w[1]);
	pritnf("%d\n", s_ptr->j);
	pritnf("%s\n", s_ptr->c);
	return 0;
}