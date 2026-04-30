#ifndef POKERANGER2_FILE_CNCGRFILE_HPP
#define POKERANGER2_FILE_CNCGRFILE_HPP

#include <nitro.h>
#include <nnsys.h>

#include "CBinaryFile.hpp"
#include "common.hpp"

class CNCGRFile : public CBinaryFile {
public:
    CNCGRFile(char *path, u32 arg1, u32 arg2, u32 arg3);
    virtual ~CNCGRFile();

public:
    NNSG2dCharacterData *unk_B8;
};

STATIC_SIZE_ASSERT(CNCGRFile, 0xBC);

#endif // POKERANGER2_FILE_CNCGRFILE_HPP
