#include "UnkClass_02001C04.hpp"

UnkClass_02001C04::UnkClass_02001C04()
    : unk_0008(24)
    , unk_0009(4)
    , unk_002A(0)
{
}

void UnkClass_02001C04::sub_02001C20()
{
    u16 v0;
    u16 v1;
    u16 v2;
    u16 v3;

    v0 = PAD_Read();
    v1 = unk_0000;

    if (unk_002A != 0) {
        v0 = 0;
    }

    if (PM_GetLCDPower() == 0) {
        v0 = 0;
    }

    v2 = unk_0000;
    unk_0002 = (v0 ^ v2) & v0;

    v3 = unk_0000;
    unk_0004 = (v0 ^ v3) & v3;

    unk_0000 = v0;
    unk_0006 = 0;

    for (u16 v6 = 0; v6 < 16; v6++) {
        u32 v7;
        u32 v8;
        u32 v9;

        v7 = unk_0000;
        v8 = v1 & (1 << v6);
        v9 = v7 & (1 << v6);

        if (v9 != v8) {
            unk_0006 = unk_0006 | v9;
            unk_000A[v6] = unk_0008;
        } else {
            --unk_000A[v6];

            if (unk_000A[v6] <= 0) {
                unk_0006 = (unk_0006 | (unk_0000 & (1 << v6)));
                unk_000A[v6] = unk_0009;
            }
        }
    }
}
