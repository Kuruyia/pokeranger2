#include "sub_02046D40.hpp"

extern "C" {
extern HeapAllocFunc sHeapAllocFunc;
extern HeapFreeFunc sHeapFreeFunc;
}

void CRYPTO_SetAllocator(HeapAllocFunc allocFunc, HeapFreeFunc freeFunc)
{
    sHeapAllocFunc = allocFunc;
    sHeapFreeFunc = freeFunc;
}
