ex15: dataStructures.o main.o
	gcc dataStructures.o main.o -o ex15

dataStructures.o: dataStructures.c
	gcc -g -Wall -c dataStructures.c -o dataStructures.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex15
	 
run: ex15
	./ex15
