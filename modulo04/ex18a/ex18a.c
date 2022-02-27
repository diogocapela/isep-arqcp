
// Implement the function int sum_multiples_x(char *vec, int x) that given vec, the address of
// a zero terminated byte vector, and x, an integer, returns the sum of all the element of vec that are
// multiples of the second byte of x.

int sum_multiples_x(char *vec, int x) {

	// get the second byte of x
	int secondByte = (x >> 8 ) & 0xff;

	// init sum
	int sum = 0;

	if(secondByte == 0) {
		return 0;
	}

	int i = 0;

	// loop until find a zero
	while(vec[i] != 0) {
		if(vec[i] % secondByte == 0) {
			sum = sum + vec[i];
		}
		i++;
	}

	return sum;

}