#include "sub_02046D40.hpp"

extern "C" {
extern HeapAllocFunc sHeapAllocFunc;
extern HeapFreeFunc sHeapFreeFunc;
}

void sub_02046D40(HeapAllocFunc allocFunc, HeapFreeFunc freeFunc)
{
    sHeapAllocFunc = allocFunc;
    sHeapFreeFunc = freeFunc;
}
