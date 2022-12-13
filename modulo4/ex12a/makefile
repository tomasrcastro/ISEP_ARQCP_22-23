ex12a: count_bits_one.o main.o
	gcc count_bits_one.o main.o -o ex12a
	
count_bits_one.o:  count_bits_one.c
	gcc -g -Wall -c  count_bits_one.c -o  count_bits_one.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex12a
	
run: ex12a
	./ex12a
