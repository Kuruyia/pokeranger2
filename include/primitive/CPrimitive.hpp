#ifndef POKERANGER2_PRIMITIVE_CPRIMITIVE_HPP
#define POKERANGER2_PRIMITIVE_CPRIMITIVE_HPP

#include <nitro.h>

// TODO: Figure out what this is
class CPrimitive_Render_arg {
public:
    u8 unk_00[0x28];
    u16 unk_28;
};

class CPrimitive {
public:
    CPrimitive();
    virtual ~CPrimitive();

    virtual u32 Render(CPrimitive_Render_arg *arg0) = 0;

public:
    struct Coordinates {
        fx32 x1;
        fx32 y1;
        fx32 x2;
        fx32 y2;
    };

    fx32 m_z;
    GXRgb m_color;
    GXPolygonMode m_polygonMode;
    int m_polygonID;
    int m_alpha;
};

#endif // POKERANGER2_PRIMITIVE_CPRIMITIVE_HPP
