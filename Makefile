# Basic Makefile <3

CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -O2

OBJ = main.o
BIN = main

all: $(BIN)

$(BIN): $(OBJ)

debug: CFLAGS += -g -O0
debug: clean $(BIN)

clean:
	$(RM) $(OBJ) $(BIN)

# END
