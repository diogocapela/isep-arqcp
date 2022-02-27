//counts  the  number  of inactive bits (with the value 0) in a number x.
int count_bits_zero(int x){
	//get binary number
	int c;
	int k;
	int count=0;
	for (c = 31; c >= 0; c--)
  	{
    	k = x >> c;
    	if (k & 1){
    	}
    	else{
      		count++;
    	}
  	}
  	return count;
}