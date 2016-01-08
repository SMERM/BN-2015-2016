#include "persona.h"
#include <stdio.h>

void persona::stampa()
{
	printf("Nome: %32s\n", this->nome);
	printf("Cognome: %32s\n", this->cognome);
	printf("Telefono: %32d\n", this->telefono);
}

persona::persona(const char* n, const char*c, int nt)	

{
	this->nome=n;
	this->cognome=c;
	this->telefono=nt;
}
