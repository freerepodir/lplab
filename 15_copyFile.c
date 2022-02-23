#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
    int fd1, fd2;
    char buffer[1024];
    long int n1;

    fd1 = open(argv[1], O_RDONLY);
    fd2 = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 0700);

    if (fd1 == -1 || fd2 == -1)
    {
        perror("Error : File Read Failure.\n");
        perror("Please check if two file names have been given as arguments.\n");
        exit(0);
    }

    printf("\nCopying the contents of %s to %s....\n", argv[1], argv[2]);
    while ((n1 = read(fd1, buffer, 1)) > 0)
    {
        write(fd2, buffer, n1);
    }
    printf("Write operation successful.\n");
    close(fd1);
    close(fd2);
}