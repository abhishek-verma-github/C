#include <stdio.h>
#include <stdlib.h>
#include "darray.h"

int main(int argc, char **argv){

	IntList *mylist;
	mylist = newIntList();

	for(int i = 0; i < 23; i++){
		add(mylist, i+1);
	}	 
	
//	printf("size of mylist: %d\n", getSize(mylist));
	
	int i;
	printf("list:[");
	for(i = 0; i < (getSize(mylist) - 1); i++){
		printf("%d, ",get(mylist,i));
	}
	printf("%d]\n",get(mylist,i));

	// print length of internal array holding elemnets
	printf("internal array length: %d\n", getArrayLen(mylist));
	

	return 0;
}
