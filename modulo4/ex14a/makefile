ex14a: reset_bit.o main.o
	gcc -Wall reset_bit.o main.o -o main

reset_bit.o: reset_bit.c reset_bit.h
	gcc -Wall -c reset_bit.c

main.o: main.c reset_bit.h
	gcc -Wall -c main.c
	
clean:
	rm -f *.o main
	
run: ex14a
	./main
