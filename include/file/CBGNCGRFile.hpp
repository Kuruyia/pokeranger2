#ifndef POKERANGER2_FILE_CBGNCGRFILE_HPP
#define POKERANGER2_FILE_CBGNCGRFILE_HPP

#include <nitro.h>
#include <nnsys.h>

#include "CBinaryFile.hpp"
#include "common.hpp"

class CBGNCGRFile : public CBinaryFile {
public:
    CBGNCGRFile(char *path, u32 arg1, u32 arg2, u32 arg3);
    virtual ~CBGNCGRFile();

public:
    NNSG2dCharacterData *unk_B8;
};

STATIC_SIZE_ASSERT(CBGNCGRFile, 0xBC);

#endif // POKERANGER2_FILE_CBGNCGRFILE_HPP
