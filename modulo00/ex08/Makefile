# ex07/Makefile

ex07: main.o media.o
	gcc -Wall main.o media.o -o ex07

main.o: main.c media.h
	gcc -Wall -c main.c

media.o: media.c
	gcc -Wall -c media.c

clean:
	rm ex07 *.o

run: ex07
	./ex07