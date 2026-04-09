#ifndef POKERANGER2_SUB_02046D40_HPP
#define POKERANGER2_SUB_02046D40_HPP

#include <nitro.h>

typedef void *(*HeapAllocFunc)(u32);
typedef void (*HeapFreeFunc)(void *);

void sub_02046D40(HeapAllocFunc, HeapFreeFunc);

#endif // POKERANGER2_SUB_02046D40_HPP
