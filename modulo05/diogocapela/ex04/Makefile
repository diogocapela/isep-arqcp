# exemplo de makefile com variaveis
# variaveis
<<<<<<< HEAD
<<<<<<< HEAD:modulo4/ex16a/Makefile
INCLUDES = asm.h
SOURCES = asm.s main.c
OBJFILES = asm.o main.o
EXEC = ex15
=======
=======
>>>>>>> 44e04734dad9f9ef9b413bdc8e67e816f944a643
INCLUDES = main.h 
SOURCES = main.c fill_student.c
OBJFILES =  main.o fill_student.o
EXEC = main
<<<<<<< HEAD
>>>>>>> f22e7bdb19f911a69ba47890411b3d40a868e189:modulo5/diogocapela/ex04/Makefile
=======
>>>>>>> 44e04734dad9f9ef9b413bdc8e67e816f944a643

# regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .s .o
# como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -Wall -g -c $<
# como transformar um .s num .o ; $< -- nome do ficheiro
.s.o:
	gcc -Wall -g -c $<	
	
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
	
${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	valgrind ./${EXEC}
	
clean:
	rm -f ${OBJFILES} ${EXEC}
	
#debug	
debug: ${EXEC}
	ddd ${EXEC} &	
