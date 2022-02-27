# exemplo de makefile com variaveis
# variaveis
INCLUDES = main.h
SOURCES = locate_greater.s update_grades.s main.c
OBJFILES = locate_greater.o update_grades.o main.o
EXEC = ex07

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
	./${EXEC}

#	valgrind ./${EXEC}
	
clean:
	rm -f ${OBJFILES} ${EXEC}
	
#debug	
debug: ${EXEC}
	ddd ${EXEC} &	