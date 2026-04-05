#include "UnkClass_020023EC.hpp"

#include <nitro.h>

void UnkClass_020023EC::sub_02002A78(s32 arg0, s32 arg1, s32 arg2, s32 arg3)
{
    s32 i;
    u32 size = arg2 * 2;

    i = 0;
    if (arg3 <= 0) {
        return;
    }

    do {
        MI_DmaFill16(3, (void *)(unk_20 + (i + arg1) * 0x40 + arg0 * 2), 0, size);
        i += 1;
    } while (i < arg3);
}
