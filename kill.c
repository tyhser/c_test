#include "csapp.h"

int main()
{
	pid_t pid;
	if (pid = fork() == 0)
	{
		pause();
		printf("control should never reach here!\n");
		exit(0);
	}
	kill(pid, SIGALRM);
	exit(0);
}

