#ifndef H_UNISTD
#define H_UNISTD

#include <stddef.h>

#define STDIN_FILENO 0
#define STDOUT_FILENO 1
#define STDERR_FILENO STDOUT_FILENO

size_t write(int fd, const void *buf, size_t count);
size_t read(int fd, const void *buf, size_t count);

#endif /* H_UNISTD */
