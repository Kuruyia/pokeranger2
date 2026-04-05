#include "sub_02001248.hpp"

#include <nitro.h>

typedef void *(*HeapAllocFunc)(u32);
typedef void (*HeapFreeFunc)(void *);

extern "C" {
extern void Heap_Init(u32);
extern void sub_0204436C(void);
extern void sub_02044440(void);
extern void sub_02046D40(HeapAllocFunc *, HeapFreeFunc *);
extern HeapAllocFunc Heap_Alloc;
extern HeapFreeFunc Heap_Free;
}

void sub_02001248(void)
{
    OS_Init();
    FX_Init();
    OS_InitTick();
    FS_Init(2);
    GX_Init();
    G3X_Init();
    RTC_Init();
    Heap_Init(0xB0000);
    sub_0204436C();
    sub_02044440();
    sub_02046D40(&Heap_Alloc, &Heap_Free);
}
