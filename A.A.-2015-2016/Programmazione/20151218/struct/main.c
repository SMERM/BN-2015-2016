#include "persona.h"

int main()
{
	struct persona p;
	p.nome = "massimiliano";
	p.cognome = "mascaro";
	p.telefono = 12345678;
	p.stampa = stampa_persona;
	(*p.stampa)(&p);
}