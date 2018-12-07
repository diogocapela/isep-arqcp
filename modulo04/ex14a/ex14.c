#include <stdio.h>


//that has as a purpose to return a number composed by the bits b31b30...bpos+1apos...a1a0
int join_bits(int a, int b, int pos){
	int k;
	int j;
	int l;
	int h;
	if(pos==31){
		j=0;
		l=a;
	}else{
		int largeInt =-1;	
		k = largeInt << (pos+1);;
		j=b&k;
		h = largeInt ^ k;
		l=a&h;
	}
	int res= l+j;
	return res;
}

