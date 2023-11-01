.PHONY: clean

CC=gcc
CFLAGS=-g -Wall
programa: principal.o sumar.o restar.o dividir.o multiplicar.o funciones.h
	$(CC) $(CFLAGS) principal.o sumar.o restar.o dividir.o multiplicar.o -o programa
principal.o: principal.c funciones.h 
	$(CC) $(CFLAGS) -c principal.c -o principal.o
sumar.o: sumar.c  funciones.h
	$(CC) $(CFLAGS) -c sumar.c  -o sumar.o
restar.o: restar.c funciones.h
	$(CC) $(CFLAGS) -c restar.c -o restar.o
dividir.o: dividir.c funciones.h
	$(CC) $(CFLAGS) -c dividir.c -o dividir.o
multiplicar.o: multiplicar.c funciones.h
	$(CC) $(CFLAGS) -c multiplicar.c -o multiplicar.o

clean:
	rm -rf *.o programa
