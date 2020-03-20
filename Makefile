#------------------------------------------------------------------------------
# Makefile for Hello.c with Macros
#
# Change first line to any other program name, then make to compile that
# program.
#------------------------------------------------------------------------------

PROG    = FileReverse
FLAGS   = -std=c99 -Wall
SOURCES = $(PROG).c
OBJECTS = $(PROG).o
EXEBIN  = $(PROG)

all: $(EXEBIN)

$(EXEBIN) : $(OBJECTS)
	gcc -o $(EXEBIN) $(OBJECTS)

$(OBJECTS) : $(SOURCES)
	gcc -c $(FLAGS) $(SOURCES)

clean :
	rm $(EXEBIN) $(OBJECTS)

