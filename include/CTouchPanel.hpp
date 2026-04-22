#ifndef POKERANGER2_CTOUCHPANEL_HPP
#define POKERANGER2_CTOUCHPANEL_HPP

#include <nitro.h>

#include "common.hpp"

class CTouchPanel {
public:
    virtual ~CTouchPanel();

    virtual void func0();

public:
    u8 unk_00[0x2C];
};

STATIC_SIZE_ASSERT(CTouchPanel, 0x30);

#endif // POKERANGER2_CTOUCHPANEL_HPP
