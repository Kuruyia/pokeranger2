#include "CTouchPanel.hpp"

#include <nitro.h>

#include "heap.hpp"

CTouchPanel::CTouchPanel()
{
    TP_Init();

    if (!TP_GetUserInfo(&unk_26)) {
        OS_Terminate();
    }

    TP_SetCalibrateParam(&unk_26);

    TPData v0 = { .x = 0, .y = 0, .touch = TP_TOUCH_OFF, .validity = TP_VALIDITY_VALID };
    unk_0A = v0;

    TPData v1 = { .x = 0, .y = 0, .touch = TP_TOUCH_OFF, .validity = TP_VALIDITY_VALID };
    unk_1E = v1;

    unk_12 = 0x18;
    unk_14 = 4;
}

CTouchPanel::~CTouchPanel()
{
}

void CTouchPanel::func0()
{
    do {
    } while (TP_RequestRawSampling(&unk_16));
    TP_GetCalibratedPoint(&unk_0A, &unk_16);

    if (PM_GetLCDPower() == PM_LCD_POWER_OFF) {
        unk_0A.x = 0;
        unk_0A.y = 0;
        unk_0A.touch = TP_TOUCH_OFF;
        unk_0A.validity = TP_VALIDITY_VALID;
    }

    u8 v1 = unk_0A.touch;
    u8 v2 = unk_05;
    unk_05 = v1;
    unk_04 = v1 & (v1 ^ v2);
    unk_06 = v2 & (v1 ^ v2);
    unk_07 = TP_TOUCH_OFF;

    if (unk_04 != TP_TOUCH_OFF) {
        unk_08 = 0x18;
        unk_07 = unk_0A.touch;
    } else if (unk_05 != TP_TOUCH_OFF) {
        --unk_08;

        if (unk_08 == 0) {
            unk_08 = 4;
            unk_07 = unk_0A.touch;
        }
    }

    if (unk_0A.touch != TP_TOUCH_OFF) {
        if (unk_0A.validity == TP_VALIDITY_VALID) {
            unk_1E.x = unk_0A.x;
            unk_1E.y = unk_0A.y;

            return;
        }

        switch (unk_0A.validity) {
        case TP_VALIDITY_INVALID_X:
            unk_0A.x = unk_1E.x;
            break;

        case TP_VALIDITY_INVALID_Y:
            unk_0A.y = unk_1E.y;
            break;

        case TP_VALIDITY_INVALID_XY:
            unk_0A.x = unk_1E.x;
            unk_0A.y = unk_1E.y;

            break;

        default:
            break;
        }

        if (unk_04 == TP_TOUCH_OFF) {
            return;
        }

        unk_04 = TP_TOUCH_OFF;
        unk_05 = TP_TOUCH_OFF;
        unk_07 = TP_TOUCH_OFF;

        return;
    }

    unk_0A.x = unk_1E.x;
    unk_0A.y = unk_1E.y;
}

void *CTouchPanel::operator new(size_t size)
{
    return Heap_AllocSecondary(size);
}

void CTouchPanel::operator delete(void *ptr)
{
    Heap_FreeSecondary(ptr);
}
