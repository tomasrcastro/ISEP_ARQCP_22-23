ex21b: distance.o main.o
	gcc distance.o main.o -o ex21b

distance.o: distance.s
	gcc -g -Wall -c distance.s -o distance.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex21b
	 
run: ex21b
	./ex21b
