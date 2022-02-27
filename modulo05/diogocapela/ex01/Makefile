main: main.o
	gcc -Wall -g main.o -o main

main.o: main.c
	gcc -Wall -g -c main.c

run: main
	valgrind ./main

clean:
	rm *.o main

debug:
	ddd main