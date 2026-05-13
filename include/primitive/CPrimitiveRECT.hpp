#ifndef POKERANGER2_PRIMITIVE_CPRIMITIVERECT_HPP
#define POKERANGER2_PRIMITIVE_CPRIMITIVERECT_HPP

#include <nitro.h>
#include <nnsys.h>

#include "primitive/CPrimitive.hpp"

// TODO: Figure out what this is
class UnkClass_CPrimitiveRECT_02003C00 {
public:
    fx32 unk_00;
    fx32 unk_04;
};

// TODO: Figure out what this is
class UnkClass_CPrimitiveRECT_38 {
public:
    u8 unk_00[0x8];
    NNSG2dImageProxy imageProxy;
};

// TODO: Figure out what this is
class UnkClass_CPrimitiveRECT_3C {
public:
    u8 unk_00[0x8];
    NNSG2dImagePaletteProxy imagePlttProxy;
};

class CPrimitiveRECT : public CPrimitive {
public:
    CPrimitiveRECT();
    virtual ~CPrimitiveRECT();

    virtual u32 Render(CPrimitive_Render_arg *arg0);

    void SetVertexCoordinates(fx32 x1, fx32 y1, fx32 x2, fx32 y2, fx32 z);
    u32 RenderWithTexture(CPrimitive_Render_arg *arg0);
    u32 RenderWithoutTexture(CPrimitive_Render_arg *arg0);

    static void sub_02003C00(UnkClass_CPrimitiveRECT_02003C00 *arg0, CPrimitiveRECT *arg1);

public:
    Coordinates m_vtxCoords;
    Coordinates m_texCoords;
    UnkClass_CPrimitiveRECT_38 *unk_38;
    UnkClass_CPrimitiveRECT_3C *unk_3C;
};

#endif // POKERANGER2_PRIMITIVE_CPRIMITIVERECT_HPP
