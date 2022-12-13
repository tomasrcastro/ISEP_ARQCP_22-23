ex21a: distance.o main.o
	gcc distance.o main.o -o ex21a

distance.o: distance.c
	gcc -g -Wall -c distance.c -o distance.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex21a
	 
run: ex21a
	./ex21a
