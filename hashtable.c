#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>


#define MAX_NAME 256
#define TABLE_SIZE 23 // a prime 

typedef struct {
    char name[MAX_NAME];
    int age;
    //... other stuff
    person * next;
    person * prev;
} person;

person * hashtable[TABLE_SIZE]; // array of pointers

unsigned int hash(char *name){
    // hash function 
    int length = (int) strlen(name);
    unsigned int hash_value = 0;

    for(int i = 0; i < length; i++){
        hash_value = name[i]+31*hash_value; // horner's method
    }
    return (hash_value & 0x7fffffff) % TABLE_SIZE; // positive value
}

void init_hashtable(){
    for(int i = 0; i < TABLE_SIZE; i++){
        hashtable[i] = NULL;
    }
}


void print_hashtable(){
    for(int i = 0; i < TABLE_SIZE; i++){
        if(hashtable[i] == NULL) printf("\t%d\t---\n", i);
        else printf("\t%d\t%s\n",i,hashtable[i]->name);
    }
} 

bool insert(person * p){
    if(p == NULL) return false;
    int index = hash(p->name);
    
    //insert into an empty index (linear probing)
    if(hashtable[index] != NULL) return false;

    hashtable[index] = p;
    return true;

}

person* get_person(char *name){
    int index = hash(name);
    if(hashtable[index] != NULL && strcmp(hashtable[index]->name, name) == 0) return hashtable[index];
    else return NULL;
}

int main(int argc, char ** argv){
    // initialize hash table
    init_hashtable();

    person mathew = {.name = "mathew", .age = 49};
    person tom = {.name = "tom", .age = 26};
    person hardy = {.name = "hardy", .age = 40};

    insert(&mathew);
    insert(&tom);
    insert(&hardy);

    print_hashtable();


    return 0;
}

