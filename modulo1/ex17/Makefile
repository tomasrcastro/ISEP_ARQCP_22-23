prog_ex17: swap.o main.o
	gcc swap.o main.o -o prog_ex17
	
swap.o: swap.c
	gcc -g -Wall -c swap.c -o swap.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex17
	
run: prog_ex17
	./prog_ex17
