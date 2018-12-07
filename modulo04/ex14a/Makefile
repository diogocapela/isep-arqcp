# exemplo de makefile com variaveis
# variaveis
INCLUDES = ex14.h 
SOURCES = ex14.c main.c
OBJFILES =  ex14.o main.o 
EXEC = ex14

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