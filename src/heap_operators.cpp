#include <nitro.h>

#include "heap.hpp"

void *operator new(size_t size)
{
    return Heap_Alloc(size);
}

void *operator new[](size_t size)
{
    return Heap_Alloc(size);
}

void operator delete(void *ptr)
{
    Heap_Free(ptr);
}

void operator delete[](void *ptr)
{
    Heap_Free(ptr);
}
