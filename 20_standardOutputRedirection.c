#include <stdlib.h>
#include <stdio.h>
#include <string.h>
int main(int argc, char *argv[])
{
    char d[50];
    if (argc != 2)
    {
        perror("\n The second argument is missing. Try again.\n");
        exit(0);
    }
    bzero(d, sizeof(d));
    strcat(d, "ls ");
    strcat(d, "> ");
    strcat(d, argv[1]);
    system(d);
}