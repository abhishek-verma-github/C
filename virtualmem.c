#include <stdio.h>
int x = 10;
int
main(int argc, char **argv){
	printf("x=%d @ %p\n", x, &x);
}
