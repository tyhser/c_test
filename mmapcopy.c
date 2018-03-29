#include "csapp.h"

int main(int argc, char **argv)
{
	int fd;
	char *bufp;
	struct stat stat;
	if (argc != 2)
	{
		printf("error!\n");
		exit(0);
	}
	scanf("%d", &fd);
	printf("%d\n", fd);
	if (fd = open(argv[1], O_RDONLY) < 0)
	{
		unix_error("mmapcopy");
		exit(1);
	}

	fstat(fd, &stat);
	bufp = mmap(NULL, stat.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
	write(STDOUT_FILENO, bufp, stat.st_size);
	munmap(bufp, stat.st_size);
	exit(0);

}
