prog_ex06: function.o main.o
	gcc function.o main.o -o prog_ex06
	
function.o: function.c
	gcc -g -Wall -c function.c -o function.o
		
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
			
clean:
	rm -f *.o prog_ex06
				
run: prog_ex06
	./prog_ex06				
