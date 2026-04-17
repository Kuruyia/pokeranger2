#include "UnkClass_020B26A0.hpp"

#include <nitro.h>

#include "CGame.hpp"
#include "constants/scene.hpp"

extern "C" {
CGame *sub_0201001C(void);
}

void UnkClass_020B26A0::sub_0201630C(RTCTime *time, RTCDate *date)
{
    CGame *game = sub_0201001C();
    u32 currSceneId = game->currentScene->getSceneId();

    if (currSceneId == SCENE_RANGER_NET_1 || currSceneId == SCENE_TITLE) {
        return;
    }

    if (unk_8B84.day == 0 || unk_8B84.month == 0) {
        return;
    }

    if (time == NULL) {
        RTCTime currTime;
        RTC_GetTime(&currTime);
        time = &currTime;
    }

    if (date == NULL) {
        RTCDate currDate;
        RTC_GetDate(&currDate);
        date = &currDate;
    }

    s32 year = date->year - unk_8B84.year;
    s32 month = date->month - unk_8B84.month;
    s32 day = date->day - unk_8B84.day;
    s32 hour = time->hour - unk_8B94.hour;
    s32 minute = time->minute - unk_8B94.minute;
    s32 second = time->second - unk_8B94.second;

    while (second < 0) {
        --minute;
        second += 60;
    }

    while (second >= 60) {
        ++minute;
        second -= 60;
    }

    while (minute < 0) {
        --hour;
        minute += 60;
    }

    if (minute >= 60) {
        ++hour;
        minute -= 60;
    }

    if (year > 0) {
        month += year * 12;
    }

    if (month > 0) {
        s32 storedYear = unk_8B84.year;
        s32 i = 0;

        if (month > 0) {
            do {
                u32 v3 = (((unk_8B84.month - 1 + i) % 12) + 1);

                switch (v3) {
                case 1:
                case 3:
                case 5:
                case 7:
                case 8:
                case 10:
                case 12:
                    day += 31;
                    break;

                case 4:
                case 6:
                case 9:
                case 11:
                    day += 30;
                    break;

                case 2:
                    if (storedYear % 400 == 0) {
                        day += 29;
                    } else if (storedYear % 100 == 0) {
                        day += 28;
                    } else if (storedYear % 4 == 0) {
                        day += 29;
                    } else {
                        day += 28;
                    }

                    break;

                default:
                    break;
                }

                ++i;

                if (v3 == 12) {
                    ++storedYear;
                }
            } while (i < month);
        }
    }

    unk_87D4 += day * 24 + hour;
    unk_87D8 += minute;
    unk_87D9 += second;

    while (unk_87D9 >= 60) {
        ++unk_87D8;
        unk_87D9 -= 60;
    }

    while (unk_87D8 >= 60) {
        ++unk_87D4;
        unk_87D8 -= 60;
    }

    if (unk_87D4 >= 100) {
        unk_87DA = 1;
    }

    unk_8B94.hour = time->hour;
    unk_8B94.minute = time->minute;
    unk_8B94.second = time->second;
    unk_8B84.year = date->year;
    unk_8B84.month = date->month;
    unk_8B84.day = date->day;
    unk_8B84.week = date->week;
}
