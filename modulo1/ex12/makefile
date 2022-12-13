prog_ex12: function.o main.o
	gcc function.o main.o -o prog_ex12
	
function.o: function.c
	gcc -c -Wall -c function.c -o function.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex12
	
run: prog_ex12
	./prog_ex12
