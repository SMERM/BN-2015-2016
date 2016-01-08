#include "studente.h"
#include <stdio.h>

void studente::stampa()
{
persona :: stampa();	
printf("Matricola: %32d\n", this->matricola);
}

studente::studente(const char* n,const  char*c, int nt, int m):persona(n,c,nt)	
{
	this->matricola=m;
}
