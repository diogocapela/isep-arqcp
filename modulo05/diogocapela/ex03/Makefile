# exemplo de makefile com variaveis
# variaveis
<<<<<<< HEAD:modulo5/diogocapela/ex03/Makefile
INCLUDES = main.h 
SOURCES = main.c fill_student.c
OBJFILES =  main.o fill_student.o
EXEC = main
=======
INCLUDES = asm.h
SOURCES = asm.s main.c
OBJFILES = asm.o main.o
EXEC = ex15
>>>>>>> e291d8ffa02f7a2a7bb1a83d6e87c5bd10475622:modulo4/ex16a/Makefile

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
