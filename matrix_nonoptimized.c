#include <stdio.h>
#include <time.h>
#include <stdlib.h>

#define MAX 10
#define MIN 1 

#define DIM 1000
double A[DIM][DIM];
double B[DIM][DIM];
double C[DIM][DIM];

int main(){
	

	clock_t start, end;

	for(int i=0; i < DIM; i++){
		for(int j=0;j < DIM; j++){
				A[i][j] = (double) rand()/ (double)RAND_MAX;
				B[i][j] = (double) rand()/ (double)RAND_MAX;
				C[i][j] = 0;
			}	
	}


	start = clock();

	for(int i = 0; i < DIM; i++){
		for(int j = 0; j < DIM; j++){
			for(int k = 0; k < DIM; k++){
				C[i][j] += A[i][k]*B[k][j];		
			}
		}
	}

	end =clock();
	
	double time_taken;
	/* 
 	time_taken = (end.tv_sec - start.tv_sec) * 1e9;
   	time_taken = (time_taken + (end.tv_nsec - start.tv_nsec)) * 1e-9;
 	*/

	time_taken = (double)(end - start) / (double)CLOCKS_PER_SEC;
	printf("[Time-Taken]: %f sec",time_taken);
	
	return 0;
}

/*
double randfrom(double min, double max) 
{
    double range = (max - min); 
    double div = RAND_MAX / range;
    return min + (rand() / div);
}

*/
