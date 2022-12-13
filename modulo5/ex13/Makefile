ex13: new_matrix.o count_odd_matrix.o main.o
	gcc new_matrix.o count_odd_matrix.o main.o -o ex13

new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o

count_odd_matrix.o: count_odd_matrix.s
	gcc -g -Wall -c count_odd_matrix.s -o count_odd_matrix.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex13
	 
run: ex13
	./ex13
