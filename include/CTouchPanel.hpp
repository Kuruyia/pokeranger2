#ifndef POKERANGER2_CTOUCHPANEL_HPP
#define POKERANGER2_CTOUCHPANEL_HPP

#include <nitro.h>

#include "common.hpp"

extern "C" void thunk_FUN_0200235c(void *ptr);

class CTouchPanel {
public:
    CTouchPanel();
    virtual ~CTouchPanel();

    void operator delete(void *ptr)
    {
        thunk_FUN_0200235c(ptr);
    }

    virtual void func0();

public:
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[0x4];
    TPData unk_0A;
    u16 unk_12;
    u16 unk_14;
    TPData unk_16;
    TPData unk_1E;
    TPCalibrateParam unk_26;
    u8 unk_2E[0x2];
};

STATIC_SIZE_ASSERT(CTouchPanel, 0x30);

#endif // POKERANGER2_CTOUCHPANEL_HPP
