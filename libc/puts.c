#include <string.h>
#include <unistd.h>

int puts(const char* s)
{
	return write(STDOUT_FILENO, s, strlen(s));
}
