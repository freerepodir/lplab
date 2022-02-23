#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
int main()
{
    int ptd[2];
    char buffer[30];
    if (pipe(ptd) == -1)
    {
        perror("Error : Pipe Failed.\n");
        exit(1);
    }
    if (!fork())
    {
        printf("CHILD: Writing to the Pipe.... \n");
        write(ptd[1], "test", 5);
        printf("CHILD: Exiting......\n");
        exit(0);
    }
    else
    {
        printf("PARENT: Reading from the Pipe... \n");
        read(ptd[0], buffer, 5);
        printf("PARENT: Read %s \n", buffer);
        wait(NULL);
    }
}
