FLAGS = -g -Wall

randomClass: randomClass.c
	gcc ${FLAGS} -o randomClass randomClass.c


clean:
	rm randomClass
