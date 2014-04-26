all: accel.dll accel.so

accel.dll: accel.c accel.h
	i686-pc-mingw32-gcc -m32 -g -O2 -Wall -shared -o accel.dll -lm accel.c

accel.so: accel.c accel.h
	$(CC) -g -O2 -Wall -shared -o accel.so -fPIC -lm accel.c
