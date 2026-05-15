#ifndef POKERANGER2_PRIMITIVE_CPRIMITIVETRIANGLE_HPP
#define POKERANGER2_PRIMITIVE_CPRIMITIVETRIANGLE_HPP

#include <nitro.h>

#include "primitive/CPrimitive.hpp"

class CPrimitiveTRIANGLE : public CPrimitive {
public:
    CPrimitiveTRIANGLE();
    virtual ~CPrimitiveTRIANGLE();

    virtual u32 Render(CPrimitive_Render_arg *arg0);

    u32 RenderWithTexture(CPrimitive_Render_arg *arg0);
    u32 RenderWithoutTexture(CPrimitive_Render_arg *arg0);

public:
    struct TriangleCoordinates {
        fx32 x1;
        fx32 y1;
        fx32 x2;
        fx32 y2;
        fx32 x3;
        fx32 y3;
    };

    TriangleCoordinates m_vtxCoords;
    TriangleCoordinates m_texCoords;

    UnkClass_CPrimitive_ImageProxy *unk_48;
    UnkClass_CPrimitive_ImagePaletteProxy *unk_4C;
};

#endif // POKERANGER2_PRIMITIVE_CPRIMITIVETRIANGLE_HPP
