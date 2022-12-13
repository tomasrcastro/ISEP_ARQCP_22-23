ex17: return_unionB_b.o main.o
	gcc return_unionB_b.o main.o -o ex17

return_unionB_b.o: return_unionB_b.s
	gcc -g -Wall -c return_unionB_b.s -o return_unionB_b.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex17
	 
run: ex17
	./ex17
