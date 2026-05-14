#ifndef POKERANGER2_PRIMITIVE_CPRIMITIVEQUAD_HPP
#define POKERANGER2_PRIMITIVE_CPRIMITIVEQUAD_HPP

#include <nitro.h>
#include <nnsys.h>

#include "primitive/CPrimitive.hpp"

class CPrimitiveQUAD : public CPrimitive {
public:
    CPrimitiveQUAD();
    virtual ~CPrimitiveQUAD();

    virtual u32 Render(CPrimitive_Render_arg *arg0);

    void SetVertexCoordinates(fx32 x1, fx32 y1, fx32 x2, fx32 y2, fx32 x3, fx32 y3, fx32 x4, fx32 y4, fx32 z);
    u32 RenderDL(CPrimitive_Render_arg *arg0, GXDLInfo *arg1);
    u32 RenderWithTexture(CPrimitive_Render_arg *arg0);
    u32 RenderWithoutTexture(CPrimitive_Render_arg *arg0);
    u32 RenderWithTextureDL(CPrimitive_Render_arg *arg0, GXDLInfo *arg1);
    u32 RenderWithoutTextureDL(CPrimitive_Render_arg *arg0, GXDLInfo *arg1);

public:
    struct QuadCoordinates {
        fx32 x1;
        fx32 y1;
        fx32 x2;
        fx32 y2;
        fx32 x3;
        fx32 y3;
        fx32 x4;
        fx32 y4;
    };

    QuadCoordinates m_vtxCoords;
    QuadCoordinates m_texCoords;

    UnkClass_CPrimitive_ImageProxy *unk_58;
    UnkClass_CPrimitive_ImagePaletteProxy *unk_5C;
};

#endif // POKERANGER2_PRIMITIVE_CPRIMITIVEQUAD_HPP
