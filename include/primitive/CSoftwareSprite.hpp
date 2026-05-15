#ifndef POKERANGER2_PRIMITIVE_CSOFTWARESPRITE_HPP
#define POKERANGER2_PRIMITIVE_CSOFTWARESPRITE_HPP

#include <nitro.h>

#include "primitive/CPrimitive.hpp"

// TODO: Figure out what this is
class UnkClass_CSoftwareSprite_30 {
public:
    inline u32 GetUnk08()
    {
        return unk_08;
    }

public:
    UnkClass_CPrimitive_ImageProxy *unk_00;
    u8 unk_04[0x4];
    u32 unk_08;
};

// TODO: Figure out what this is
class UnkClass_CSoftwareSprite_38 {
public:
    u8 unk_00[0xB8];
    const NNSG2dCellDataBank *unk_B8;
};

class CSoftwareSprite : public CPrimitive {
public:
    CSoftwareSprite();
    virtual ~CSoftwareSprite();

    virtual u32 Render(CPrimitive_Render_arg *arg0);

    void SetTransformParams(fx32 posX, fx32 posY, fx32 scaleX, fx32 scaleY, u16 rotAngle, fx32 posZ);
    u16 sub_0200527C(CPrimitive_Render_arg *arg0);
    u16 sub_020058BC(CPrimitive_Render_arg *arg0);
    s16 GetObjPosX(const GXOamAttr *oamAttr);
    s16 GetObjPosY(const GXOamAttr *oamAttr);
    s16 FixObjPosX(s16 objPosX);
    s16 FixObjPosY(s16 objPosY);
    u32 ObjSizeToTexSize(u16 objSize);
    u16 GetCellNumOAMAttrs(u16 cellIdx);

    static u32 sub_020050C8(void);
    static u32 sub_02005120(void);

public:
    struct Clipping {
        s16 x1;
        s16 x2;
        s16 y1;
        s16 y2;
        BOOL enabled;
    };

    fx32 m_coords[2];
    fx32 m_scale[2];
    u16 m_rotAngle;
    u16 m_cellDataIdx;
    UnkClass_CPrimitive_ImageProxy *unk_2C;
    UnkClass_CSoftwareSprite_30 *unk_30;
    UnkClass_CPrimitive_ImagePaletteProxy *unk_34;
    UnkClass_CSoftwareSprite_38 *unk_38;
    BOOL unk_3C;
    Clipping m_clipping;
};

#endif // POKERANGER2_PRIMITIVE_CSOFTWARESPRITE_HPP
