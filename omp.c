#include <omp.h>
#include <stdio.h>

int main(int argc, char *argv[]){

int a[10],b[10],c[10];

int i;
for(i=0; i < 10; i++){
a[i] = i+1;
b[i] = i+2;
}

int j;
#pragma omp parallel for
for(j = 0; j < 10; j++){
c[j] = a[j]+b[j];
}

int k;
for(k=0;k<10;k++){
printf("c[i] = %i",c[k]);
}

}

