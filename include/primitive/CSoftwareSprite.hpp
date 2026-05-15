#ifndef POKERANGER2_PRIMITIVE_CSOFTWARESPRITE_HPP
#define POKERANGER2_PRIMITIVE_CSOFTWARESPRITE_HPP

#include <nitro.h>

#include "primitive/CPrimitive.hpp"

class CSoftwareSprite : public CPrimitive {
public:
    CSoftwareSprite();
    virtual ~CSoftwareSprite();

    virtual u32 Render(CPrimitive_Render_arg *arg0);

    void sub_020051F8(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5);

    static u32 sub_020050C8(void);
    static u32 sub_02005120(void);

public:
    u8 unk_18[0x12];
    u16 unk_2A;
    u32 unk_2C;
    u32 unk_30;
    u32 unk_34;
    u32 unk_38;
    u32 unk_3C;
    u16 unk_40;
    u16 unk_42;
    u16 unk_44;
    u16 unk_46;
    u32 unk_48;
};

#endif // POKERANGER2_PRIMITIVE_CSOFTWARESPRITE_HPP
