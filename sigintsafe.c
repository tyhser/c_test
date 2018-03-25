#include "csapp.h"

void sigint_handler(int sig)
{
	sio_puts("Caught SIGINT!\n");
	_exit(0);
}
