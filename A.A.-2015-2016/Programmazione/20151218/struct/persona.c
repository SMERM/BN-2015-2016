#include "persona.h"
#include <stdio.h>

void stampa_persona(struct persona *p)
{
	printf("Nome: %32s\n", p->nome);
	printf("Cognome: %32s\n", p->cognome);
	printf("Telefono: %32d\n", p->telefono);
}