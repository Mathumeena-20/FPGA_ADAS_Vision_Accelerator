#include <stdio.h>

void accelerator_start()
{
    printf("Accelerator started\n");
}

void accelerator_stop()
{
    printf("Accelerator stopped\n");
}

int main()
{
    accelerator_start();

    accelerator_stop();

    return 0;
}