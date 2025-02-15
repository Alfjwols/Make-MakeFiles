CC = g++                  # compiler
TARGET = employee         # executable name
CFLAGS = -c -Wall -Wextra # Compile with all errors and warnings

all: $(TARGET)

# compile the executable taget (employee)
$(TARGET): main.o Employee.o Officer.o Supervisor.o
	$(CC) main.o Employee.o Officer.o Supervisor.o -o $(TARGET)

# compile main
main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp -o main.o

# compile employee
Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) Employee.cpp Employee.h -c Employee.o

# compile officer
Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) Officer.cpp Officer.h -c Officer.o

# compile supervisor
Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) Supervisor.cpp Supervisor.h -c Supervisor.o

# clean up .o and target files
clean:
	rm -f *.o $(TARGET)
