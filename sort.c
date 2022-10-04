#include <stdio.h>
#include <string.h>
#include <stdlib.h>


#define MAXLEN 1000                         // maximum input line size
#define MAXLINES 5000                       // max #lines to be sorted

char *lineptr[MAXLINES];                    // pointer to test lines
int readlines(char *lineptr[], int nlines);
void writelines(char *lineptr[], int nlines);

void quicksort(char *lineptr[], int left, int right);
int get_line(char s[], int lim);
void swap(char *v[], int i, int j);
int partition(char *v[], int lo, int hi );

// optional numeric cmp:

void quicksort_(void *lineptr[], int lo, int hi, int (*cmp)(void *, void *));
int numcmp(char *s, char*t);

// client code
// sort input lines. Usage: sort < input.txt, input.txt | sort | output.txt
int main(int argc, char *argv[]){
    int nlines;             // number of inpuft lines read
    int numeric = 0;        // 1 if numeric sort
    /*
    if((nlines = readlines(lineptr, MAXLINES)) >= 0){
        quicksort(lineptr, 0, nlines - 1);
        writelines(lineptr, nlines);
        return 0;
    }
    */

    if(argc > 1 && (strcmp(argv[1], "-n")) == 0)
        numeric = 1;
    if((nlines = readlines(lineptr, MAXLINES)) >= 0){
        quicksort_((void **) lineptr, 0, nlines - 1, (int (*)(void*, void*))(numeric ? numcmp : strcmp));
        writelines(lineptr, nlines);
        return 0;
    }
    else{
        printf("error: input too big to sort\n");
        return 1;
    }
}

// get_line: read line from std input into array s and return length lof string read.
int get_line(char s[], int lim){
    int c, i;
    for(i=0; i < lim-1 && (c = getchar()) != EOF && c != '\n'; ++i ) s[i] = c;
    if(c == '\n') s[i++] = c;
    s[i] = '\0';
    return i;
}

// readline: read input lines, returns number of lines read
int readlines(char *lineptr[], int maxlines){
    int len, nlines;            // len: length of string returned by get_line, nlines: number of lines read
    char *p, line[MAXLEN];      // p: pointer to new allocated char array for storing string, line: char array

    nlines = 0;
    while((len = get_line(line,MAXLEN)) > 0){    // read input line as long as a line is there
        if(nlines >= maxlines || ( p = (char*) malloc(len*(sizeof(char)))) == NULL )
            return -1;
        else{
            line[len-1] = '\0';
            strcpy(p, line);
            lineptr[nlines++] = p;
        }
    }
    return nlines;
}

//writelines: write output lines to stdout
void writelines(char *lineptr[], int nlines){
    int i;
    for(i = 0; i < nlines; i++ ){
        printf("%s\n", lineptr[i]);
    }
}


// quicksort: QuickSort v[] 
void quicksort(char *v[], int lo, int hi){

    if(lo >= hi) return;
    int j = partition(v,lo,hi);
    quicksort(v, lo, j-1);
    quicksort(v, j+1, hi);

}

int partition(char *v[], int lo, int hi ){
    int i = lo,j = hi+1;
    while(1){
        while(strcmp(v[++i], v[lo]) < 0)
            if(i == hi) break;
        
        while(strcmp(v[lo], v[--j]) < 0)
            if(j == lo) break;
        
        if(i >= j) break;
        swap(v, i, j);
    }

    swap(v, lo, j);
    return j;
}

// swap: interchange v[i], v[j]
void swap(char *v[], int i, int j){
    char *temp;
    temp = v[j];
    v[j] = v[i];
    v[i] = temp;
}

void swap_(void *v[], int i, int j){
    void * temp;
    temp = v[j];
    v[j] = v[i];
    v[i] = temp;
}

// numcmp: compare s and t numerically
int numcmp(char *s, char *t){
    long v1, v2;
    v1 = atol(s);
    v2 = atol(t);

    if(v1 < v2)         return -1;
    else if(v1 > v2 )   return 1;
    else                return 0;
}

// quicksort_: sort v[] int increasing order
void quicksort_(void *v[], int lo, int hi, int (*cmp)(void *, void *)){
    if(lo >= hi) return;
    int j = partition_(v,lo,hi,cmp);
    quicksort(v, lo, j-1);
    quicksort(v, j+1, hi);
}

// partition_: returns partition element, based upon cmp.
int partition_(char *v[], int lo, int hi, int (*cmp)(void *, void *)){
    int i = lo,j = hi+1;
    while(1){
        while((*cmp)(v[++i], v[lo]) < 0)
            if(i == hi) break;
        
        while((*cmp)(v[lo], v[--j]) < 0)
            if(j == lo) break;
        
        if(i >= j) break;
        swap_(v, i, j);
    }

    swap_(v, lo, j);
    return j;
}
