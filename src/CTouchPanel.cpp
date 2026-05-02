#include "CTouchPanel.hpp"

#include <nitro.h>

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
