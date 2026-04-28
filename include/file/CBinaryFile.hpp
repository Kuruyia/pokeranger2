#ifndef POKERANGER2_FILE_CBINARYFILE_HPP
#define POKERANGER2_FILE_CBINARYFILE_HPP

#include <nitro.h>

#include "common.hpp"

class CBinaryFile {
public:
    CBinaryFile();
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
