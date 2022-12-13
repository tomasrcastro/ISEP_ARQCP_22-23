prog_ex07: sort.o main.o
	gcc sort.o main.o -o prog_ex07
	
sort.o: sort.c
	gcc -g -Wall -c sort.c -o sort.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex07
	
run: prog_ex07
	./prog_ex07
