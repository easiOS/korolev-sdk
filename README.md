# Korolev64 GCC SDK
Develop applications for easiOS using this GCC-CMake-NASM SDK.

Put C source files in `/src/` and header files in `/include/`. Generate makefile with CMake and run it.

```
$ cat src/main.c
#include <stdio.h>
#include <korolev.h>

void main(void)
{
	clear_k();
	puts("Hello World!\n");
}

$ mkdir build
$ cd build
$ cmake ../
-- Configuring done
-- Generating done
-- Build files have been written to: build/
$ make
[100%] Built target out.kom
```

`build/out.kom` is the built KOM executable.
