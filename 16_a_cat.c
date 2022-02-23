#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
    if (argc == 1)
    {
        perror("\nError : No file has been given as input.\n");
        exit(0);
    }

    int fd1;
    char buffer[1024];
    long int n1;

    fd1 = open(argv[1], O_RDONLY, 0777);
    if (fd1 == -1)
    {
        perror("\nError : File Read Failure.\n.");
        exit(0);
    }

    while ((n1 = read(fd1, buffer, 1)) > 0)
    {
        printf("%c", buffer[0]);
    }
}
