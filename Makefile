mkdir -p exe include completed

CXXFLAGS =	-O2 -g -Wall -fmessage-length=0 -std=c++11

SRC = $(wildcard src/*.cpp)

OBJS = $(SRC:.cpp=.o)

INC = -I include/

LIBS = -pthread

TARGET = 

all:		$(OBJS)
	echo "All Set.."

.cpp.o:
	g++ $(CFLAGS) $< -o $@ $(LIBS) $(INC);
	cp $@ $(addprefix exe/,$(addsuffix .exe ,$(basename $(notdir $@))));

clean:
	rm -f $(OBJS)  exe/*
