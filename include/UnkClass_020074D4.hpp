#ifndef POKERANGER2_UNKCLASS_020074D4_HPP
#define POKERANGER2_UNKCLASS_020074D4_HPP

#include <nitro.h>
#include <nnsys.h>

#include "common.hpp"
#include "file/CNCGRFile.hpp"

class UnkClass_020074D4 {
public:
    UnkClass_020074D4();
    UnkClass_020074D4(const char *arg0, u32 arg1, u32 arg2);
    UnkClass_020074D4(NNSG2dCharacterData *arg0);
    ~UnkClass_020074D4();

    void sub_0200755C();
    void sub_02007590(const char *arg0, u32 arg1, u32 arg2, u32 arg3);
    void sub_0200763C(NNSG2dCharacterData *arg0);
    void sub_020076B0();
    void sub_020076E8(u32 arg0);
    void sub_02007714(u32 arg0);

    static void sub_02007744(void *data);

public:
    CNCGRFile *unk_00;
    NNSG2dCharacterData *unk_04;
    NNSG2dImageProxy unk_08;
    u32 unk_2C;
    u8 unk_30;
    u16 unk_32;
    u16 unk_34;
    u32 unk_38;
};

STATIC_SIZE_ASSERT(UnkClass_020074D4, 0x3C);

#endif // POKERANGER2_UNKCLASS_020074D4_HPP
