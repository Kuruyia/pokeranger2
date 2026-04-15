#include "heap.hpp"

#define ARENA_ALIGNMENT      16
#define ARENA_ALIGNMENT_MASK (ARENA_ALIGNMENT - 1)
#define ALLOC_ALIGNMENT      4

extern "C" {
extern HeapHandles sHeapHandles;
extern void SDK_MAIN_ARENA_LO(void);
}

void Heap_Init(u32 secondarySize)
{
    OS_InitArena();

    void *secondaryPtr = OS_AllocFromMainArenaLo(secondarySize, ARENA_ALIGNMENT);
    u32 mainArenaSize = ((u32)OS_GetMainArenaHi() & ~ARENA_ALIGNMENT_MASK) - ((u32)OS_GetMainArenaLo() + ARENA_ALIGNMENT_MASK & ~ARENA_ALIGNMENT_MASK);
    void *mainPtr = OS_AllocFromMainArenaLo(mainArenaSize, ARENA_ALIGNMENT);

    sHeapHandles.secondary = NNS_FndCreateExpHeapEx(secondaryPtr, secondarySize, NNS_FND_HEAP_OPT_0_CLEAR);
    sHeapHandles.main = NNS_FndCreateExpHeapEx(mainPtr, mainArenaSize, NNS_FND_HEAP_OPT_0_CLEAR);
}

void *Heap_Alloc(size_t size)
{
    void *ptr = NNS_FndAllocFromExpHeapEx(sHeapHandles.main, size, ALLOC_ALIGNMENT);

    if (ptr != NULL) {
        return ptr;
    }

    if (sHeapHandles.temporary == NULL) {
        return ptr;
    }

    return NNS_FndAllocFromExpHeapEx(sHeapHandles.temporary, size, ALLOC_ALIGNMENT);
}

void *Heap_AllocWithAlignment(size_t size, u32 alignment)
{
    void *ptr = NNS_FndAllocFromExpHeapEx(sHeapHandles.main, size, alignment);

    if (ptr != NULL) {
        return ptr;
    }

    if (sHeapHandles.temporary == NULL) {
        return ptr;
    }

    return NNS_FndAllocFromExpHeapEx(sHeapHandles.temporary, size, alignment);
}

void Heap_Free(void *ptr)
{
    if ((u32)ptr >= (u32)SDK_MAIN_ARENA_LO) {
        NNS_FndFreeToExpHeap(sHeapHandles.main, ptr);
    } else {
        NNS_FndFreeToExpHeap(sHeapHandles.temporary, ptr);
    }
}

NNSFndHeapHandle *Heap_GetMainHandle(void)
{
    return &sHeapHandles.main;
}

void *Heap_AllocSecondary(size_t size)
{
    return NNS_FndAllocFromExpHeapEx(sHeapHandles.secondary, size, ALLOC_ALIGNMENT);
}

void Heap_FreeSecondary(void *ptr)
{
    NNS_FndFreeToExpHeap(sHeapHandles.secondary, ptr);
}

NNSFndHeapHandle *Heap_GetSecondaryHandle(void)
{
    return &sHeapHandles.secondary;
}

void Heap_InitTemporary(void *ptr, size_t size)
{
    Heap_DestroyTemporary();

    if (ptr == NULL || size == 0) {
        return;
    }

    sHeapHandles.temporary = NNS_FndCreateExpHeapEx(ptr, size, NNS_FND_HEAP_OPT_0_CLEAR);
}

void Heap_DestroyTemporary(void)
{
    if (sHeapHandles.temporary != NULL) {
        NNS_FndDestroyExpHeap(sHeapHandles.temporary);
    }

    sHeapHandles.temporary = NULL;
}
