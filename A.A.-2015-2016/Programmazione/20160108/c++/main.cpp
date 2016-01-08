#include "studente.h"

int main()
{
	const char * nome = "Massimiliano";
		const char * cognome = "Mascaro";

	studente p (nome, cognome, 666, 15141312);
	p.stampa();
}