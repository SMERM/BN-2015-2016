struct persona
{
	char* nome;
	char* cognome;
	int telefono;
	void (*stampa) (void *);
};

void stampa_persona(struct persona *p);