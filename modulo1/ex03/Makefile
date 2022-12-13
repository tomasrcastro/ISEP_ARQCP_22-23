prog_ex03: sum.o main.o
	gcc sum.o main.o -o prog_ex03
	
sum.o: sum.c
	gcc -g -Wall -c sum.c -o sum.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex03
	
run: prog_ex03
	./prog_ex03
