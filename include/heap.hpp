#ifndef POKERANGER2_HEAP_HPP
#define POKERANGER2_HEAP_HPP

#include <nitro.h>
#include <nnsys.h>

struct HeapHandles {
    NNSFndHeapHandle main;
    NNSFndHeapHandle secondary;
    NNSFndHeapHandle overlay;
};

void Heap_Init(u32 secondarySize);
void *Heap_Alloc(size_t size);
void Heap_Free(void *ptr);
NNSFndHeapHandle *Heap_GetMainHandle(void);
void *Heap_AllocSecondary(size_t size);
void Heap_FreeSecondary(void *ptr);
NNSFndHeapHandle *Heap_GetSecondaryHandle(void);
void Heap_InitOverlay(void *ptr, size_t size);
void Heap_DestroyOverlay(void);

#endif // POKERANGER2_HEAP_HPP
