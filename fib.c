#include <stdio.h>
#include <time.h>

int N = 40;

int main(){
	
	clock_t start, end;
	
	start = clock();
	int result = dfib(N);
	end = clock();
	
	double time_taken_df = 	(double)(end - start) / (double)CLOCKS_PER_SEC;

	printf("%d th fibonacci number : %d [time-taken]: %f sec\n",N,result, time_taken_df);

	start = clock();
	int res2 = fib(N);
	end = clock();
	
	double time_taken =  (double)(end - start) / (double)CLOCKS_PER_SEC;
	printf("%d th fibonacci number : %d [time-taken]: %f sec\n",N,result, time_taken);
	
}

int fib(int n){
	if(n < 2)
		return n;
	return fib(n-1) + fib(n-2);

}

int dfib(int n){

/* Declare an array to store Fibonacci numbers. */
  int f[n+2];   // 1 extra to handle case, n = 0
  int i;
 
  /* 0th and 1st number of the series are 0 and 1*/
  f[0] = 0;
  f[1] = 1;
 
  for (i = 2; i <= n; i++)
  {
      /* Add the previous 2 numbers in the series
         and store it */
      f[i] = f[i-1] + f[i-2];
  }
 
  return f[n];

}
