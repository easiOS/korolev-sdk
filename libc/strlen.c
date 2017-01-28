#include <string.h>

size_t strlen(const char* s)
{
	char* s2 = (char*)s;
	while(*(s2++));
	return s2 - s;
}
