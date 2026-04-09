#include "sub_0204436C.hpp"

#include <nitro.h>

#include "UnkClass_0210CEC8.hpp"

extern "C" {
extern UnkClass_0210CEC8 MAIN_BSS_0210CEC8;
}

void sub_0204436C(void)
{
    MAIN_BSS_0210CEC8.unk_0 = OS_GetTick();
    MAIN_BSS_0210CEC8.unk_4 = 0x5D588B65;
    MAIN_BSS_0210CEC8.unk_8 = 0x269EC3;
}
