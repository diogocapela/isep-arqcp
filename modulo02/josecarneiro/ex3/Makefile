main : main.o asm.o asm1.o
	gcc -Wall -g main.o asm.o asm1.o -o main

main.o : main.c asm.h
	gcc -Wall -g -c main.c

asm.o : asm.s
	gcc -Wall -g -c asm.s


asm1.o : asm1.s
	gcc -Wall -g -c asm1.s	

run : main
	./main

clean:
	rm *.o main