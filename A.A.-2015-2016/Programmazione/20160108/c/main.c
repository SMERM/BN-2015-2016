#include "studente.h"

int main()
{
	struct studente p;
	p.p.nome = "massimiliano";
	p.p.cognome = "mascaro";
	p.p.telefono = 666;
	p.matricola = 12345678;
	
	p.p.stampa = stampa_studente;
	(*p.p.stampa)(&p);
}