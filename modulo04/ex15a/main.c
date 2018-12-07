#include <stdio.h>
#include "ex15.h"

int main(void){
	//Bits 0 to 15 are the year
	//Bits 16 to 23 are the day
	//Bits 24 to 31 are the month
	int date1=0b00001011010111011000011111011110;
	int date2=0b00001010010111011000011111011110;
	int res=greater_date(date1, date2);
	

	if(res==date1){
		printf("%s\n", "date1");
	}else{
		if(res==date2){
			printf("%s\n", "date2");
		}else{
			printf("%s\n", "unexpected result");
		}
	}

	return 0;
}