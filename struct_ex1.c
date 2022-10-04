#include <stdio.h>
#include <stdlib.h>



typedef struct Person{
	
	char *name;
	int age;

} Person;

Person *newPerson(char *s, int a){
	
	Person *P = malloc(sizeof(Person));
	P->name = s;
	P->age = a;
	return P;

}

void updatePerson(Person *p, char *s, int a){
	
	p->name = s;
	p->age = a;

}

void printPerson(Person *person){

	printf("Person(name=%s, age=%d)\n",person->name,person->age);
}

int main(int argc, char **argv){

	Person *abhi = newPerson("Abhishek",26);
	printPerson(abhi);
		
	updatePerson(abhi, "Chris Bumstead", 37);
	printPerson(abhi);
	return 0;

}
