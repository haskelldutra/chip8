FLAGS= -lSDL2

all:
	gcc ./src/main.c ${FLAGS} -o ./bin/main

clean:
	rm -f ./bin/main

