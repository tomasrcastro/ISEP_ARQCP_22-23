ex05: update_grades.o main.o
	gcc update_grades.o main.o -o ex05

update_grades.o: update_grades.s
	gcc -g -Wall -c update_grades.s -o update_grades.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex05
	 
run: ex05
	./ex05
