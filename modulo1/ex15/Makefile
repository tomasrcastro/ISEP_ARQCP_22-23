prog_ex15: populate.o check.o inc_nsets.o main.o
	gcc populate.o check.o inc_nsets.o main.o -o prog_ex15
	
populate.o: populate.c
	gcc -g -Wall -c populate.c -o populate.o
	
check.o: check.c
	gcc -Wall -c check.c -o check.o
	
inc_nsets.o: inc_nsets.c
	gcc -Wall -c inc_nsets.c -o inc_nsets.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex15
	
run: prog_ex15
	./prog_ex15
