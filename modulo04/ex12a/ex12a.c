
// Implement the function int activate_bit(int *ptr, int pos) that,
// given a pointer to an integer, places ’1’ on the bit given by pos
// (a value within 0 . . . 31). The function should return 1 if the
// bit was altered or 0 if the bit was already one.

int activate_bit(int *ptr, int pos) {

	// 11001010
	// 00000001
	// OR
	// 11001011

	if(pos < 0 || pos > 31) {
		return 0;
	}

	int binaryNumber = *(ptr);


	printf("binaryNumber = %x\n", binaryNumber);
	printf("pos = %d\n", pos);

	int mask = 1 << pos;

	*(ptr) = binaryNumber | mask;

	printf("after mask = %x\n", *(ptr));

	// if they are the same, there was a 0
	if(*(ptr) == binaryNumber) {
		return 0;
	}

	return 1;

}