TARGET = agenda
OBJECTS = main.o persona.o studente.o

$(TARGET): $(OBJECTS)
	$(CXX) $(CFLAGS) -o $@ $(OBJECTS)

persona.o main.o studente.o: persona.h studente.h

clean:
	$(RM) $(TARGET) $(OBJECTS)