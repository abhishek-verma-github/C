#ifndef DARRAY_H
#define DARRAY_H

#define INITIAL_SIZE 16
#define FACTOR 0.75

typedef struct IntList{
	
	int *array;
	int size;
	int alen;

} IntList;

IntList * newIntList();

void add(IntList *list, int element);

int getArrayLen(IntList *list);

int getSize(IntList *list);

int get(IntList *list, int index);

#endif
