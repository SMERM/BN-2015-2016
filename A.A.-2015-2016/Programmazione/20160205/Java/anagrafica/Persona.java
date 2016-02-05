public class Persona{
	public String nome, cognome;
	public int numTelefono;
	Persona(String n, String c, int num)
	{
		this.nome = n;
		this.cognome = c;
		this.numTelefono = num;
	}
	public void stampa()
	{
		System.out.println("Questo è il nome: " + nome + "\nQuesto è il cognome: " + cognome + "\nE puoi chiamarlo qui: " + numTelefono);
	}
}
