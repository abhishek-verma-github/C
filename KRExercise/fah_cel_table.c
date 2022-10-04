#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){

    int tlen = atoi(argv[1]);

    int fahr, lower, upper, step;
    float celcius;

    lower = 0;
    upper = atoi(argv[2]);
    step = 20;

    for(int f = lower, i = 1; f < upper; i++, f = f+step){
        celcius =(float) 5 * (f-32) / 9;
        printf("%d.\t[Fahrenheit=%d, Celcius=%.2f]\n", i, f, celcius);
    }

    return EXIT_SUCCESS;
}