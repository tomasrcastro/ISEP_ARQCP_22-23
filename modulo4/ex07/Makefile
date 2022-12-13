ex07: count_odd.o main.o
	gcc count_odd.o main.o -o ex07

count_odd.o: count_odd.s
	gcc -g -Wall -c count_odd.s -o count_odd.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex07
	 
run: ex07
	./ex07
