#ifndef ASM_H
#define ASM_H
	
	typedef struct {
		short x;
		int y;
	} structA;

	typedef struct {
		structA a;      
		structA *b;
		int x;
		char c;
		int y;
		char e[3];
		short z;


		
	} structB;

	short fun1(structB *s);
	short fun2(structB *s);
	short* fun3(structB *s);
	short fun4(structB *s);
#endif