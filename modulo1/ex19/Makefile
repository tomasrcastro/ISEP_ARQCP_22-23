prog_ex19: find.o main.o
	gcc find.o main.o -o prog_ex19
	
find.o: find.c
	gcc -g -Wall -c find.c -o find.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex19
	
run: prog_ex19
	./prog_ex19
