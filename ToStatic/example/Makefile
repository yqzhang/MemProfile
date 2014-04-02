CC = gcc

all: test

test: test.s
	$(CC) -g -o test test.s

test.s: test.c
	$(CC) -g -S -fverbose-asm test.c

clean:
	rm test test.s
