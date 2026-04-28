#ifndef POKERANGER2_FILE_CNCLRFILE_HPP
#define POKERANGER2_FILE_CNCLRFILE_HPP

#include <nitro.h>
#include <nnsys.h>

#include "CBinaryFile.hpp"
#include "common.hpp"

class CNCLRFile : public CBinaryFile {
public:
    CNCLRFile(char *path, u32 arg1, u32 arg2, u32 arg3);
    virtual ~CNCLRFile();

public:
    NNSG2dPaletteData *unk_B8;
};

STATIC_SIZE_ASSERT(CNCLRFile, 0xBC);

#endif // POKERANGER2_FILE_CNCLRFILE_HPP
