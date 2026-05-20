#include <stdio.h>

#define FRAME_WIDTH  640
#define FRAME_HEIGHT 480

void initialize_frame_buffer()
{
    printf("Frame buffer initialized\n");
}

void clear_frame_buffer()
{
    printf("Frame buffer cleared\n");
}

int main()
{
    initialize_frame_buffer();

    clear_frame_buffer();

    return 0;
}