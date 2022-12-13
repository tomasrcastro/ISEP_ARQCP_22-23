prog_ex11: pali.o main.o
	gcc pali.o main.o -o prog_ex11
	
pali.o: pali.c
	gcc -g -Wall -c pali.c -o pali.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex11
	
run: prog_ex11
	./prog_ex11
