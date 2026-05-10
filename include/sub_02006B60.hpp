#ifndef POKERANGER2_SUB_02006B60_HPP
#define POKERANGER2_SUB_02006B60_HPP

#include <nitro.h>

struct Rectangle {
    fx32 x;
    fx32 y;
    fx32 w;
    fx32 h;
};

BOOL RectanglesOverlap(Rectangle rect1, Rectangle rect2);

#endif // POKERANGER2_SUB_02006B60_HPP
