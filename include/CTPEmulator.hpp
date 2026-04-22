#ifndef POKERANGER2_CTPEMULATOR_HPP
#define POKERANGER2_CTPEMULATOR_HPP

#include <nitro.h>

#include "CTouchPanel.hpp"
#include "common.hpp"

class CTPEmulator : public CTouchPanel {
public:
    virtual ~CTPEmulator();

    virtual void func0();

public:
    u8 unk_00[0x24];
};

STATIC_SIZE_ASSERT(CTPEmulator, 0x54);

#endif // POKERANGER2_CTPEMULATOR_HPP
