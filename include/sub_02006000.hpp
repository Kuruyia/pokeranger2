#ifndef POKERANGER2_SUB_02006000_HPP
#define POKERANGER2_SUB_02006000_HPP

#include <nitro.h>

struct Point2D {
    fx32 x;
    fx32 y;

    inline Point2D operator+(Point2D other)
    {
        return (Point2D) {
            .x = x + other.x,
            .y = y + other.y,
        };
    }

    inline Point2D operator-(Point2D other)
    {
        return (Point2D) {
            .x = x - other.x,
            .y = y - other.y,
        };
    }
};

struct PointPair2D {
    Point2D p1;
    Point2D p2;
};

struct Rectangle {
    Point2D pos;
    Point2D size;
};

struct UnkStruct_02006100 {
    fx32 unk_00;
    fx32 unk_04;
    u32 unk_08;
};

struct UnkStruct_02006164 {
    Point2D unk_00;
    fx32 unk_08;
};

struct UnkStruct_02006238 {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    u32 unk_0C;
    u32 unk_10;
};

// TODO: Make sure those function signatures are correct
BOOL sub_02006000(Point2D arg0, Rectangle arg1, u32 arg2);
BOOL sub_02006100(Point2D arg0, Point2D arg1, UnkStruct_02006100 arg2);
BOOL sub_02006164(UnkStruct_02006164 arg0, UnkStruct_02006164 arg1, Point2D *arg2);
BOOL sub_02006238(UnkStruct_02006164 arg0, UnkStruct_02006238 arg1);
BOOL sub_02006350(PointPair2D arg0, PointPair2D arg1, Point2D *arg2, BOOL arg3);
BOOL sub_02006610(PointPair2D arg0, PointPair2D arg1, Point2D *arg2);
BOOL sub_02006764(PointPair2D arg0, UnkStruct_02006164 arg1, Point2D *arg2, s32 arg3);
s8 sub_02006AE0(PointPair2D arg0, Point2D arg1);
BOOL sub_02006C04(PointPair2D arg0, Rectangle arg1, Point2D *arg2);
BOOL sub_02006E30(UnkStruct_02006164 arg0, Rectangle arg1, Point2D *arg2, s32 arg3);
BOOL sub_02006F80(UnkStruct_02006164 arg0, Rectangle arg1);
// TODO: End

BOOL RectanglesOverlap(Rectangle rect1, Rectangle rect2);

#endif // POKERANGER2_SUB_02006000_HPP
