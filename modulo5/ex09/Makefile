ex09: function.o main.o
	gcc function.o main.o -o ex09
	
function.o: function.s
	gcc -g -Wall -c function.s -o function.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean: 
	rm -f *.o ex09
	
run: ex09
	./ex09
