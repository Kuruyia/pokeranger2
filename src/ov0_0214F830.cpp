#include "ov0_0214F830.hpp"

#include <nitro.h>

#include "UnkClass_020B26A0.hpp"

extern "C" {
void sub_02018148(UnkClass_020B26A0 *, u32, u8, u8);

extern UnkClass_020B26A0 MAIN_BSS_020B26A0;
}

void ov0_0214F830(s32 arg0)
{
    u32 hour = arg0 / 3600;
    u32 minute = (arg0 % 3600) / 60;
    u32 second = arg0 % 60;

    sub_02018148(&MAIN_BSS_020B26A0, hour, minute, second);

    RTCTime time;
    RTCDate date;

    RTC_GetTime(&time);
    RTC_GetDate(&date);

    MAIN_BSS_020B26A0.unk_8B94 = time;
    MAIN_BSS_020B26A0.unk_8B84 = date;
}
