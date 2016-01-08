#include "studente.h"
#include <stdio.h>

void stampa_studente(void * v)
{
	struct studente * p = (struct studente *)v;
	stampa_persona(&p->p);
	printf("Matricola: %32d\n", p->matricola);
}