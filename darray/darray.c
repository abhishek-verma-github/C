#include <stdio.h>
#include <stdlib.h>
#include "darray.h"


IntList * newIntList(){

	IntList *l = malloc(sizeof(IntList));
	l->alen = INITIAL_SIZE;
	l->array = malloc(sizeof(int)*INITIAL_SIZE);
	l->size = 0;	
	return l;

}


int getArrayLen(IntList *list){
	return list->alen;
}

void add(IntList *list, int element){

	int arrlen = getArrayLen(list);
//	printf("len(array): %d\n",arrlen);

	if((list->size / arrlen) < FACTOR){
		list->array[list->size] = element;
		list->size++;	
	}else{
		
		int *newArray = malloc(sizeof(int)*(arrlen*2));
		list->alen = arrlen*2;

		for(int i = 0; i < arrlen; i++){
			newArray[i] = list->array[i];
		}
		list->array = newArray;
		list->array[list->size] = element;
		list->size++;
	}

}

int getSize(IntList *list){

	return list->size;
}

int get(IntList* list, int index){
	
	return list->array[index];
	
}


