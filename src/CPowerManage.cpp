#include "CPowerManage.hpp"

#include <nitro.h>

#include "UnkClass_020B26A0.hpp"

extern "C" {
extern UnkClass_020B26A0 MAIN_BSS_020B26A0;
extern CPowerManage sPowerManage;
}

void CPowerManage::Init()
{
    unk_4 = 0;
    unk_8 = 0;
}

void CPowerManage::sub_0200F8BC()
{
    if ((!unk_4) == FALSE) {
        return;
    }

    if (PAD_DetectFold()) {
        switch (unk_8) {
        case 0: {
            RTCTime time;
            RTCDate date;

            RTC_GetTime(&time);
            RTC_GetDate(&date);

            MAIN_BSS_020B26A0.sub_0201630C(&time, &date);
            PM_GoSleepMode(PM_TRIGGER_COVER_OPEN | PM_TRIGGER_CARD, 0, 0);

            RTC_GetTime(&time);
            RTC_GetDate(&date);

            MAIN_BSS_020B26A0.unk_8B94 = time;
            MAIN_BSS_020B26A0.unk_8B84 = date;

            return;
        }

        case 1:
            if (PM_GetLCDPower() != PM_LCD_POWER_ON) {
                return;
            }

            PM_SetLCDPower(PM_LCD_POWER_OFF);
            return;

        default:
            return;
        }
    }

    if (PM_GetLCDPower() != PM_LCD_POWER_OFF) {
        return;
    }

    PM_SetLCDPower(PM_LCD_POWER_ON);
}

BOOL CPowerManage::sub_0200F9E0()
{
    sPowerManage.Init();
    return TRUE;
}

void CPowerManage::sub_0200F9F8()
{
    sPowerManage.sub_0200F8BC();
}
