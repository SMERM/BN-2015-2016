#include "persona.h"
class studente : public persona
{
	int matricola;
	public :
	void stampa();
	studente(const char*, const char*, int, int);
};
