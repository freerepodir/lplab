#include <stdio.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <stdlib.h>
void main()
{
    int queue_id;
    /*create a private messaga queue,with access only to the owner*/
    queue_id = msgget(IPC_PRIVATE, 0600);
    if (queue_id == -1)
    {
        perror("Error : msgget failure. \n");
        exit(1);
    }
    printf("Message Queue ID = %d.\n", queue_id);
}