#include <stdio.h>


//Bits 0 to 15 are the year
//Bits 16 to 23 are the day
//Bits 24 to 31 are the month
//returns the greater of the two dates passed as parameters (date1anddate2)
int greater_date(int date1, int date2){
	
	unsigned int year1 = date1 & 0xffff;
	unsigned int year2 = date2 & 0xffff;

	if(year1>year2){
		return date1;
	}else{
		if(year2>year1){
			return date2;
		}
	}
	
	unsigned int j1 =(unsigned)date1>>(8*3);
	unsigned int j2 = (unsigned)date2>>(8*3);
	unsigned int month1= j1 & 0xff;
	unsigned int month2= j2 & 0xff;
	if(month1>month2){
		return date1;
	}else{
		if(month2>month1){
			return date2;
		}
	}
	
	j1 = date1>>(8*2);
	j2 = date2>>(8*2);
	unsigned int day1 = j1 & 0xff;
	unsigned int day2 = j2 & 0xff;
	
	if(day1>day2){
		return date1;
	}else{
		if(day2>day1){
			return date2;
		}
	}
	
	return date1;
}