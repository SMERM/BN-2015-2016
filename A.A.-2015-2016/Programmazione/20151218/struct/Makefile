TARGET = agenda
OBJECTS = main.o persona.o

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $(OBJECTS)

persona.o main.o: persona.h

clean:
	$(RM) $(TARGET) $(OBJECTS)