main.o: main.c
	mingw32-gcc-9.2.0.exe -c main.c

selection.o:
	mingw32-gcc-9.2.0.exe -c selection.c

lib.a: selection.o selection.h
	mingw32-gcc-ar.exe -rsc lib.a selection.o

output: main.o lib.a
	mingw32-gcc-9.2.0.exe main.o lib.a -o output

clean:
	rm *.o *.a *.exe