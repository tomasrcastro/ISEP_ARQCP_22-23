ex11: vec_greater10.o main.o
	gcc vec_greater10.o main.o -o ex11

vec_greater10.o: vec_greater10.s
	gcc -g -Wall -c vec_greater10.s -o vec_greater10.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex11
	 
run: ex11
	./ex11
