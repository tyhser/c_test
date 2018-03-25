#ifndef __CSAPP_H
#define __CSAPP_H
#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <signal.h>

#define unix_error(msg) fprintf(stderr, "%s: %s\n", msg, strerror(errno))

ssize_t sio_putl(long v);
ssize_t sio_puts(char s[]);
void sio_error(char s[]);
#endif
