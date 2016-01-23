Persona{
	classvar count_ = 1;
	var <nome, cognome, num_telefono, <>id;
	*new { arg nome, cognome, num_telefono;
		var myObject;
		myObject = super.newCopyArgs(nome, cognome, num_telefono);
		myObject.id = count_;
		count_ = count_ + 1;
		^myObject
	}
	*count{
		^(count_-1)
	}
	stampaln {
		nome.postln;
		cognome.postln;
		num_telefono.postln;
		id.postln;
		Persona.count.postln;
	}
	stampaf{
		postf("Questo è il nome: %\nQuesto è il cognome: %\nE puoi chiamarlo qui: %\nId: %/%\n", nome, cognome, num_telefono, id, Persona.count);
	}
}
