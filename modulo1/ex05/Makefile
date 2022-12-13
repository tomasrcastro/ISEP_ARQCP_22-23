prog_ex05: upper.o main.o
	gcc upper.o main.o -o prog_ex05
	
upper.o: upper.c
	gcc -g -Wall -c upper.c -o upper.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex05
	
run: prog_ex05
	./prog_ex05
