#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
/*
One dimensional peak finder:
problem: Given an array A of N integers, find a peak if exist.
    def: position k(0<=k<=N) is a peak iff A[k-1] <= A[k] <= A[k+1] and 
    in case of edges look to your one side only. 
*/
void get_int_arr(int *a, char** char_a, int len);

int find_peak(int A[], int len);

int main(int argc,char **argv){

    int N = argc-1;
    int A[N];
    printf("argc = %d\n",argc);    

    get_int_arr(A,argv,N);

    for(int i = 0; i < N; i++){
        printf("A[%d] = %d\n", i, A[i]);
    }
    int peak = find_peak(A, N);
    if(peak != -1){
        printf("\nPeak at %d. \n",peak);
    }
    return EXIT_SUCCESS;
}

void get_int_arr(int a[], char** char_a, int len){
    for(int i = 0; i < len; i++){
        printf("%s\n",*(char_a+i+1));
        a[i] = atoi(char_a[i+1]);
    }
}

int find_peak(int a[], int len){
    
    int l = len;
    for(int i = 0; i < l; i++){
       if(i != 0 && i != l-1){
        if(a[i-1] <= a[i] && a[i] >= a[i+1]) 
            return i;
       }
        else{
            if(i == 0 &&(a[i] >= a[i+1])){ return i; }
            else if(i == l-1 && (a[i] >= a[i-1])){ return i; }
        }
    } 
    return -1;
}