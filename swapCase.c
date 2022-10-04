#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX 1000

void swpcase(char *, char *, int);

int main(int argc, char *argv[]){

    char str[MAX];

    char c;

    int i = 0;
    int l = 0;
    while((c = getchar()) != EOF){
        str[i++] = c;
        l++;
    }
    str[i] = '\0';

    char *ipr = (char *) malloc(l * sizeof(char));
    
    swpcase(str,ipr,l);
    
    printf("%s", ipr);
}

void swpcase(char *s, char *t, int l){
    for(int i = 0; i <= l; i++){
        if(*(s+i) >=65 & *(s+i) <=90 ){
            *(t+i) = *(s+i)+32;

        }
        else if(*(s+i) >=97 & *(s+i) <=122)
            *(t+i) = *(s+i)-32;
        else
            *(t+i) = *(s+i); 
            
    }
}