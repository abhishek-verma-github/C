#include<stdio.h>  
void main() {  
   int a = 10, b = 20, c;  
   
   __asm__("movl a,ea;"
	   "movl b,eb;"
	   "addl eb,ea;"
	   "movl ea,c;"
		);  
   
   printf("c= %d",c);  
}  
