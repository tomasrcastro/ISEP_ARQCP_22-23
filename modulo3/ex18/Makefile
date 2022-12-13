prog: sort_without_reps.o remove_duplicates.o main.o
	gcc -g -Wall sort_without_reps.o remove_duplicates.o main.o -o prog
	
sort_without_reps.o: sort_without_reps.s
	gcc -g -Wall -c sort_without_reps.s -o sort_without_reps.o
	
remove_duplicates.o: remove_duplicates.s
	gcc -g -Wall -c remove_duplicates.s -o remove_duplicates.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog

run: prog
	./prog
