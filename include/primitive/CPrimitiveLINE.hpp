#ifndef POKERANGER2_PRIMITIVE_CPRIMITIVELINE_HPP
#define POKERANGER2_PRIMITIVE_CPRIMITIVELINE_HPP

#include <nitro.h>

#include "primitive/CPrimitive.hpp"

class CPrimitiveLINE : public CPrimitive {
public:
    CPrimitiveLINE();
    virtual ~CPrimitiveLINE();

    virtual u32 Render(CPrimitive_Render_arg *arg0);

public:
    struct Coordinates {
        fx32 x1;
        fx32 y1;
        fx32 x2;
        fx32 y2;
    };

    Coordinates m_coords;
};

#endif // POKERANGER2_PRIMITIVE_CPRIMITIVELINE_HPP
