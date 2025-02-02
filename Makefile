FLAGS= -lSDL2
INCLUDES= -I ./include

all:
	gcc ${INCLUDES} ./src/main.c ${FLAGS} -o ./bin/main

clean:
	rm -f ./bin/main

