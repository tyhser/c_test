#include <stdio.h>
#define sign(x) ((x == 0)?(0):(x > 0)?(1):(-1))
int main()
{
	printf("x > 0:%d\nx < 0:%d\nx == 0:%d\n", \
			sign(-2), sign(0), sign(2));
	return 0;
}
