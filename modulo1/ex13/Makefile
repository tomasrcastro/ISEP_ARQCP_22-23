prog_ex13: where.o main.o
	gcc where.o main.o -o prog_ex13
	
where.o: where.c
	gcc -g -Wall -c where.c -o where.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex13
	
run: prog_ex13
	./prog_ex13
