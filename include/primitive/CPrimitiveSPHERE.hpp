#ifndef POKERANGER2_PRIMITIVE_CPRIMITIVESPHERE_HPP
#define POKERANGER2_PRIMITIVE_CPRIMITIVESPHERE_HPP

#include <nitro.h>

#include "primitive/CPrimitive.hpp"

class CPrimitiveSPHERE : public CPrimitive {
public:
    CPrimitiveSPHERE();
    virtual ~CPrimitiveSPHERE();

    // https://decomp.me/scratch/48yEZ
    virtual u32 Render(CPrimitive_Render_arg *arg0);

public:
    struct SphereCoordinates {
        fx32 unk_00;
        fx32 unk_04;
        fx32 unk_08;
    };

    SphereCoordinates m_coords;
};

#endif // POKERANGER2_PRIMITIVE_CPRIMITIVESPHERE_HPP
