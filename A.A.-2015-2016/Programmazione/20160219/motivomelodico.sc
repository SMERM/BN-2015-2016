MotivoMelodico : Array{
	*random{
		arg maxN = 7;
		var numNotes = rrand(1, maxN),
		result = Array.fill(numNotes, {arg i; rand(12)});
		^result;
	}
}
