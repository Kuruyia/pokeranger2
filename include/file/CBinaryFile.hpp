#ifndef POKERANGER2_FILE_CBINARYFILE_HPP
#define POKERANGER2_FILE_CBINARYFILE_HPP

#include <nitro.h>

#include "common.hpp"

class CBinaryFile {
public:
    CBinaryFile();
    CBinaryFile(const char *path, u32 arg1, u32 arg2, u32 arg3, void *arg4, u32 arg5);
    virtual ~CBinaryFile();

    void sub_02002C9C();
    void *sub_02002CB4(const char *path, u32 arg1, u32 arg2, u32 arg3, void *arg4, u32 arg5);
    void *sub_02002DD0(const char *path, u32 arg1, u32 arg2, void *arg3, u32 arg4);
    void sub_020030D4();

    static BOOL sub_02003108(const char *path);

public:
    FSFile file;
    void *unk_4C;
    u32 unk_50;
    u32 unk_54;
    u8 unk_58[0x60];
};

STATIC_SIZE_ASSERT(CBinaryFile, 0xB8);

#endif // POKERANGER2_FILE_CBINARYFILE_HPP
