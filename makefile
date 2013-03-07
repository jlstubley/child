#
# Makefile for Child
#
# Declaration of variables
CXX = g++
CXXFLAGS = -g -Wall -MMD

# File names
EXEC = child
SOURCES = $(wildcard *.cc)
OBJECTS = $(SOURCES:.cc=.o)
DEPENDS = $(OBJECTS:.o=.d)

# Main target
$(EXEC): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(EXEC)

# Dependencies
-include $(DEPENDS)

# Clean
.PHONY : clean
clean:
	rm -rf $(DEPENDS) $(OBJECTS) $(EXEC)



