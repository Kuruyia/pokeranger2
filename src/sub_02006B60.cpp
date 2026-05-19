#include "sub_02006B60.hpp"

#include <nitro.h>

#include "fx_utils.hpp"
#include "sub_02006000.hpp"

s8 sub_02006AE0(PointPair2D arg0, Point2D arg1)
{
    fx32 v0 = FX32_MUL(arg0.p2.x - arg0.p1.x, arg1.y - arg0.p1.y) - FX32_MUL(arg0.p2.y - arg0.p1.y, arg1.x - arg0.p1.x);

    if (v0 < 0) {
        return 1;
    } else if (v0 > 0) {
        return -1;
    } else {
        return 0;
    }
}

BOOL RectanglesOverlap(Rectangle rect1, Rectangle rect2)
{
    fx32 left1 = rect1.x - (rect1.w >> 1);
    fx32 top1 = rect1.y - (rect1.h >> 1);
    fx32 left2 = rect2.x - (rect2.w >> 1);
    fx32 right2 = left2 + rect2.w;
    fx32 top2 = rect2.y - (rect2.h >> 1);
    fx32 bottom2 = top1 + rect1.h;
    fx32 right1 = left1 + rect1.w;
    fx32 bottom1 = top2 + rect2.h;

    fx32 minLeft = (left1 < left2) ? left1 : left2;
    fx32 maxRight = (right1 > right2) ? right1 : right2;
    fx32 minTop = (top1 < top2) ? top1 : top2;
    fx32 maxBottom = (bottom2 > bottom1) ? bottom2 : bottom1;

    return maxRight - minLeft < rect1.w + rect2.w && maxBottom - minTop < rect1.h + rect2.h;
}
