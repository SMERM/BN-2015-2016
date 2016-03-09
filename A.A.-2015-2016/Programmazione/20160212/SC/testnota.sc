TestNota : UnitTest{
	var nota;
	setUp{
		nota = Nota.new;
	}
	test_cpspch{
		this.assertEquals(nota.cpspch(8.00), 261.6, "hello");
		this.assert(nota.cpspch(8.05)!=261.6, "tutto ok")
	}
}
