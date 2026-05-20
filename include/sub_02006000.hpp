#ifndef POKERANGER2_SUB_02006000_HPP
#define POKERANGER2_SUB_02006000_HPP

#include <nitro.h>

struct Point2D {
    fx32 x;
    fx32 y;
};

struct PointPair2D {
    Point2D p1;
    Point2D p2;
};

struct Rectangle {
    Point2D pos;
    Point2D size;
};

struct UnkStruct_02006000 {
    fx32 unk_00;
    fx32 unk_04;
    u32 unk_08;
    u32 unk_0C;
};

struct UnkStruct_02006100 {
    fx32 unk_00;
    fx32 unk_04;
    u32 unk_08;
};

struct UnkStruct_02006164 {
    fx32 unk_00;
    fx32 unk_04;
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
BOOL sub_02006000(Point2D arg0, Point2D arg1, UnkStruct_02006000 arg2);
BOOL sub_02006100(Point2D arg0, Point2D arg1, UnkStruct_02006100 arg2);
BOOL sub_02006164(UnkStruct_02006164 arg0, UnkStruct_02006164 arg1, Point2D *arg2);
BOOL sub_02006238(UnkStruct_02006164 arg0, UnkStruct_02006238 arg1);
BOOL sub_02006350(PointPair2D arg0, PointPair2D arg1, Point2D *arg2, BOOL arg3);
BOOL sub_02006610(PointPair2D arg0, PointPair2D arg1, Point2D *arg2);
// TODO: End

#endif // POKERANGER2_SUB_02006000_HPP
