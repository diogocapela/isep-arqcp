#include <stdio.h>
#include "asm.h"

int main(void)
{
	int date1 = 0xb0b07de;
	int date2 = 0xa0b07de;
	int result = greater_date(date1, date2);
		
	if(result==date1){
		printf("date1\n");
	}else{
		if(result==date2){
		printf("date2\n");
		}else{
			printf("unexpected result\n");
		}
	}

	return 0;
}
