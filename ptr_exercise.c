#include <stdio.h>

void pswap(int *a, int *b);

int main(){

    int a[] = {1,2,3,4,5,6};
    int * ptr = a;
    *(ptr + 2) = 10;//a[2]   
    size_t l = sizeof a/sizeof a[0];
    for(size_t i=0; i < l/2; i++){
        //pswap(&a[i], &a[l-i-1]);
        pswap(ptr+i,ptr+l-i-1);
    }
    for(int i = 0; i < l; i++)
        printf("%d ",a[i]);
}

void pswap(int *a, int *b){
    // swaps two objects a and b.
    int temp;
    temp = *b;
    *b = *a;
    *a = temp;
}

void swap(int A[], int i, int j){
    // swaps two elements within an array, reference to array is passed in this version.
    size_t len = sizeof A / sizeof A[0];
    if(i > len || j > len){exit(-1);}
    int temp;
    temp = A[j];
    A[j] = A[i];
    A[i] = temp; 

}

// implementation of strcpy in stdlib, _ in the name to avoid namespace conflict
void str_cpy(char *s, char *t){
    // while((*s++ = *t++) != '\0'); // since the comparison against '\0' is redundant, since question is merely the expresion is zero.
    // therefore
    while(*s++ = *t++);
}

