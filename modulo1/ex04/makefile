prog_ex04: function.o main.o
	gcc function.o main.o -o prog_ex04
	
function.o: function.c
	gcc -g -Wall -c function.c -o function.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex04
	
run: prog_ex04
	./prog_ex04				
