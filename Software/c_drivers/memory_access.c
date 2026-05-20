#include <stdio.h>
#include <stdint.h>

uint32_t memory[1024];

void write_memory(uint32_t addr, uint32_t data)
{
    memory[addr] = data;
}

uint32_t read_memory(uint32_t addr)
{
    return memory[addr];
}

int main()
{
    write_memory(0, 1234);

    printf("Memory Data = %u\n", read_memory(0));

    return 0;
}