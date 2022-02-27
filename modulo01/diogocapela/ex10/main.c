#include <stdio.h>
#include <stdlib.h>

int checkPalindrome(char str[])
{
	int isPalindrome = 0;

	int min = 0;
	int max = sizeof(str);

	printf("%d\n", max);

	while(*str != '\0') {
		printf("%c\n", *str);
		str++;
	}


	return isPalindrome;
}

int main()
{
	char []text = "Never odd or even";

	int result = checkPalindrome(text);

	printf("%d\n", result);

	return 0;
}