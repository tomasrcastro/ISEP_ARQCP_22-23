prog_ex09: sort.o main.o
	gcc sort.o main.o -o prog_ex09
	
sort.o: sort.c
	gcc -g -Wall -c sort.c -o sort.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex09
	
run: prog_ex09
	./prog_ex09
