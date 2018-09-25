/*
Minimalistic Hello World
*/


/*

as directivas para o pre processador (cpp) começam sempre com "#"

SO PODEMOS INCLUIR FIHCEIROS .h

#include <stdio.h> - biblioteca de sistema
#include <mydefs.h> - biblioteca nossa, path relativo (same folder)



especie de static final no JAVA

#define MAX 100
#define check(x) ((x) < MAX)




---------------------------------------------------------
NUM SISTEMA DE 32 BITS


char - 1 byte
int - 4 bytes
short - 2 bytes
long - 4 bytes

float - 4 bytes
double - 8 bytes
long oduble - 10 bytes


int e long sao iguais por razoes historicas

tambem existem as unsigned

exemplo:
unsigned char -  so tem numeros positivos e 0

---------------------------------------------------------

char c = 'A';

char c = 100;


int i = -321312;

unsigned int i = 1312120;

float pi = 3.14;

double pi = 3.144234e+1;


ATENTION: os tamanhos das variaveis variam consoante as arquiteturas de sistema (32 ou 64 bits)



CONVERSAO DE VARS
---------------------------------------------------------

- implicita



- explicita

float f = 1.2;
int d = (int)f; // d = 1



printf() format
---------------------------------------------------------

%d ou %i - signed int

%s - string

%c - char







ARRAYS
---------------------------------------------------------

int a[10];

int a1[] = {1, 2, 3, 4, 5};





*/

#include <stdio.h>

int main(void)
{
	printf("Hello, World\n");
	return 0;
}




/*



-Wall : all warnings
-g : debug information
-save-temps : ver ficheiros temp




gcc -Wall hello.c -o hello


com ficheiros temporarios

gcc -save-temps hello.c -o hello


*/