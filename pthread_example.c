/* Multithreaded C program using PThreads API */


#include <stdio.h>
#include <pthread.h>
#include <time.h>

int sum = 0;			/* shared data */
void *runner(void* arg);	/* threads call this function */


#define ARR_SIZE 40
#define NUM_THREADS 4
int arr[ARR_SIZE];
int part = 0;


int main(int argc, char *argv[]){
	
	
	for(int k = 0; k < ARR_SIZE; k++){
		arr[k] = k+1;
	}

	pthread_t workers[NUM_THREADS]; /* array of threads */
	pthread_attr_t attr; /* set of thread attribtes */

	
	pthread_attr_init(&attr); /* get the default attributes */
	
	/* create threads */

	for(int i = 0; i < NUM_THREADS; i++){
		
		pthread_create(&workers[i], &attr, runner, (void*)NULL);
	}

	/* wait for worker threads to exit */

	for(int r = 0; r < NUM_THREADS; r++){
		pthread_join(workers[r], NULL);
	}
	
	printf("arr[0]+arr[1]+...+arr[39] = %d", sum);	

}

void *runner(void *arg){
	int thread_part = part++;
  
    	for (int i = thread_part * (ARR_SIZE / 4); i < (thread_part + 1) * (ARR_SIZE / 4); i++)
        sum += arr[i];
	
	pthread_exit(0);
}

