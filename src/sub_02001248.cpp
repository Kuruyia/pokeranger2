#include "sub_02001248.hpp"

#include <nitro.h>

#include "heap.hpp"
#include "sub_0204436C.hpp"
#include "sub_02044440.hpp"
#include "sub_02046D40.hpp"

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
    sub_02046D40(Heap_Alloc, Heap_Free);
}
