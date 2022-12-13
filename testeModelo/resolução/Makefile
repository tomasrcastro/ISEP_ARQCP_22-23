INCLUDES=decifra_chars.h decifra_texto.h
SOURCES=decifra_chars.s decifra_texto.s
OBJFILES=main.o decifra_chars.o decifra_texto.o
EXEC=prog
CARGS=-Wall -g

.SUFFIXES : .s .c .o

.c.o:
	gcc $(CARGS) -c $<

.s.o:
	gcc $(CARGS) -c $<

${EXEC}: ${OBJFILES}
	gcc $(CARGS) -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}