prog: main.o
	gcc main.o -o prog
		
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
		
clean:	
	rm -f *.o prog
		
run: prog
	./prog