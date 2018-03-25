#include "csapp.h"

static size_t sio_strlen(char *s)
{
	size_t i = 0;
	while(*(s + i) != '\0')
	{
		i++;
	}
	return i;
}

ssize_t sio_puts(char s[]) /* Put string */
{
	return write(STDOUT_FILENO, s, sio_strlen(s));
}

void sio_error(char s[])
{
	sio_puts(s);
	_exit(1);
}

