#include <stdio.h>


int get_integer_part(char number[])
{
	int contador = 0;
	int result = 0;

	while(number[contador] != '.') {
		// truque para transformar o char em numero - ver ASCII table '0' representa 48
		result = result * 10 + (number[contador] - '0');
		contador++;
	}

	return result;

}

// com apontador
int get_fractional_part(char* number) {

	int result = 0;
	int isInDecimalPart = 0;

	while(*number != '\0') {
		if(isInDecimalPart) {
			result = result * 10 + (*number - '0');
		}

		if(*number == '.') {
			isInDecimalPart = 1;
		}

		number++;
	}

	return result;


}



int main()
{
	char full_number[50] = "12354.9876";

	int integer = get_integer_part(full_number);
	int fractional = get_fractional_part(full_number);

	printf("%d\n", integer);
	printf("%d\n", fractional);

	return 0;
}