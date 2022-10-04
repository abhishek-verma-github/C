#include <sys/types.h>
#include <stdio.h>
#include <unistd.h>

int main(){
	printf("---- OPERATING SYSTEM CONCEPTS 9th EDITION  ---- \n");
	pid_t pid;

	/* fork a child process */
	pid = fork();
		
	if(pid < 0){
		/* error forking */
		fprintf(stderr, "Fork Failed");
		return 1;
	}

	if(pid == 0){
		/* child process */
		execlp("/bin/ls", "ls", NULL);
	}

	else {
		/* parent process */
		/* will wait for child process to complete */
		wait(NULL);
		printf("Child Complete");
	}
	
	return 0;
	
}
