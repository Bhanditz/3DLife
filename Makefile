#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
# Edited by leonarven                                                          #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
AR = ar
WINDRES = windres

CFLAGS = -Wall `sdl-config --cflags` -std=c++11 -std=gnu++11 -O2
LIB = -lGL -lGLU
LDFLAGS = `sdl-config --libs` -s
OBJDIR= obj
OUT = 3Dlife
OBJ = $(OBJDIR)/main.o

all: release

clean: clean_release

before_release:
	test -d $(OBJDIR) || mkdir -p $(OBJDIR)

after_release:

release: before_release out_release after_release

out_release: before_release $(OBJ)
	g++ -o $(OUT) $(OBJ)  $(LDFLAGS) $(LIB)

$(OBJDIR)/main.o: main.cpp
	g++ $(CFLAGS) -c main.cpp -o $(OBJDIR)/main.o

clean_release:
	rm -f $(OBJ) $(OUT)
	rm -rf bin
	rm -rf $(OBJDIR)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

