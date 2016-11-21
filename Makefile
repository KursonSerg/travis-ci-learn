CC=g++
CFLAGS=-c -Wall
CXXFLAGS=-std=c++11
LDFLAGS=
SOURCES=main.cpp hello.cpp factorial.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
	
test_lest: test_lest.cpp lest.hpp
	$(CC) $(CXXFLAGS) -o test_lest test_lest.cpp
	./test_lest
	
clean:
	rm -rf *.o hello
