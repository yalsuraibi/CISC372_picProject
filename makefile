
image:image.c image.h
	gcc -g image.c -o image -lm -pthread

imageMP: imageMP.c image.h
	gcc -O2 -fopenmp imageMP.c -o imageMP -lm

clean:
	rm -f image output.png
