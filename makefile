CC=gcc
CFLAGS=-ansi -Wall
OBJ=avl.o myavl.o
EXEC=myavl

all: myavl clean

myavl: $(OBJ)
	$(CC) $(OBJ) -o $(EXEC) $(CFLAGS)

avl.o: ArvoreAVL/avl.h ArvoreAVL/avl.c
	$(CC) -c ArvoreAVL/avl.c $(CFLAGS)

myavl.o: ArvoreAVL/avl.h ArvoreAVL/avl.c
	$(CC) -c myavl.c $(CFLAGS)

clean:
	-rm -f $(OBJ) *~

purge: clean
	-rm -f $(EXEC)