#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAXLINES 1000
int get_line(char *line, int max);


/* find: print lines that match patter from the forst argument */
int main(int argc, char *argv[]){

    char line[MAXLINES];
    int found = 0;

    if(argc != 2) printf("Usage: find pattern\n");
    else{
        while(get_line(line, MAXLINES) > 0)
            if(strstr(line,argv[1]) != NULL){
                printf("%s: %s", argv[1],line);
                found++;
            }
    }
    return found;
}

int get_line(char s[], int lim){
    int c, i;
    for(i=0; i < lim-1 && (c = getchar()) != EOF && c != '\n'; ++i ) s[i] = c;
    if(c == '\n') s[i++] = c;
    s[i] = '\0';
    return i;
}