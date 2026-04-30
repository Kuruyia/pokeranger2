#ifndef POKERANGER2_CTOUCHPANEL_HPP
#define POKERANGER2_CTOUCHPANEL_HPP

#include <nitro.h>

#include "common.hpp"

class CTouchPanel {
public:
    virtual ~CTouchPanel();

    virtual void func0();

public:
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[0x4];
    u16 unk_0A;
    u16 unk_0C;
    u8 unk_0E[0x22];
};

STATIC_SIZE_ASSERT(CTouchPanel, 0x30);

#endif // POKERANGER2_CTOUCHPANEL_HPP
