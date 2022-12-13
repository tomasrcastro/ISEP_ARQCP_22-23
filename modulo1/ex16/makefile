prog_ex16: function.o main.o
	gcc function.o main.o -o prog_ex16
	
function.o: function.c
	gcc -c -Wall -c function.c -o function.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex16
	
run: prog_ex16
	./prog_ex16
