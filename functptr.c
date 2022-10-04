#include <stdio.h>
#include <stdlib.h>


int add(int a, int b){
	return a+b;
}

int sub(int a, int b){
	return a-b;
}

void do_op(int (*fun)(int a, int b), int x, int y){
	int result = (*fun)(x,y);
	printf("result : %d\n",result);
}

int main(int argc, char** argv){
	

	do_op(add, 2,3);
	do_op(sub, 3,2);

}
