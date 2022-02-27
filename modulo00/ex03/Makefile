# ex02/Makefile

ex02: main.o string_to_int.o
	gcc -Wall main.o string_to_int.o -o ex03

main.o: main.c string_to_int.h
	gcc -Wall -c main.c

string_to_int.o: string_to_int.c string_to_int.h
	gcc -Wall -c string_to_int.c
