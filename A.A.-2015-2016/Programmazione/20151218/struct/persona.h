struct persona
{
	char* nome;
	char* cognome;
	int telefono;
	void (*stampa) (struct persona *p);
};

void stampa_persona(struct persona *p);