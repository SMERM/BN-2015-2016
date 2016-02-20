Nota{
	classvar <>urdo = 1.021875; //questo è 0.00
	cpspch{
		arg pch;
		var pch_int = pch.floor,
		pch_dec = pch - pch_int;
		^(pow(2, pch_int)*pow(2, pch_dec*100/12)*Nota.urdo);
	}
}