main: main.o test_even.o vec_sum_even.o
	gcc -Wall -g main.o test_even.o vec_sum_even.o -o main

main.o: main.c asm.h
	gcc -Wall -g -c main.c

test_even.o: test_even.s
	gcc -Wall -g -c test_even.s

vec_sum_even.o: vec_sum_even.s
	gcc -Wall -g -c vec_sum_even.s

run: main
	valgrind ./main

clean:
	rm *.o main

debug:
	ddd main