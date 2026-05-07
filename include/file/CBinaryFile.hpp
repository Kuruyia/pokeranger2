#ifndef POKERANGER2_FILE_CBINARYFILE_HPP
#define POKERANGER2_FILE_CBINARYFILE_HPP

#include <nitro.h>

#include "common.hpp"

class CBinaryFile {
public:
    CBinaryFile(const char *path, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5);
    virtual ~CBinaryFile();

public:
    FSFile file;
    void *unk_4C;
    u32 unk_50;
    void *unk_54;
    u8 unk_58[0x60];
};

STATIC_SIZE_ASSERT(CBinaryFile, 0xB8);

#endif // POKERANGER2_FILE_CBINARYFILE_HPP
