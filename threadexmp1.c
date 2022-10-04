#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>


void * func(void* arg){
    int* ptr = (int*) malloc(sizeof(int));
    int* side = (int*) arg;
    *ptr = 0 + (*side);
    for(int i = 0; i < 10; i++){
        sleep(1);
        printf("My turn %d, ptr = %d\n", i, *ptr);
        (*ptr)++;
    }

    return ptr;
}

int main(int argc, char* argv[]){
    pthread_t thread1, thread2;
    int side1, side2;
    side1 = 4;
    side2 = 6;

    int* result, *result2;

    pthread_create(&thread1, NULL, func, &side1);
    pthread_create(&thread2, NULL, func, &side2);

    pthread_join(thread1, &result);
    pthread_join(thread2, &result2);

    printf("result: [thread1]: %d,\t[thread2]: %d", *result, *result2);


}