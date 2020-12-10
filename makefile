CC=gcc
CFLAGS=-ansi -Wall
OBJ=myavl.o ArvoreAVL/avl.o
EXEC=myavl

all: subsystem myavl clean

subsystem:
	cd ArvoreAVL && $(MAKE)

myavl: $(OBJ)
	$(CC) $(OBJ) -o $(EXEC) $(CFLAGS)

myavl.o: ArvoreAVL/avl.h ArvoreAVL/avl.c
	$(CC) -c myavl.c $(CFLAGS)

clean:
	cd ArvoreAVL && $(MAKE) clean
	-rm -f $(OBJ) *~

purge: clean
	-rm -f $(EXEC)