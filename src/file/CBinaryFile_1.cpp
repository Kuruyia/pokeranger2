#include <nitro.h>
#include <nnsys.h>

#include "file/CBinaryFile.hpp"
#include "heap.hpp"

// This is required to match the while-loop in sub_02002DD0.
// This doesn't affect any other function.
#pragma optimization_level 2

extern "C" {
extern char DAT_0208a564;
extern u32 MAIN_BSS_0208F320;
extern u32 *MAIN_BSS_0208F31C;
}

void CBinaryFile::sub_02002C9C()
{
    unk_4C = NULL;
    unk_50 = 0;
    unk_54 = 1;
}

void *CBinaryFile::sub_02002CB4(const char *path, u32 arg1, u32 arg2, u32 arg3, void *arg4, u32 arg5)
{
    sub_020030D4();

    if (path != NULL && arg3 == 0) {
        if (STD_GetStringLength(path) >= 0x60) {
            return NULL;
        }

        STD_CopyLString((char *)&unk_58, path, 0x60);
    } else {
        STD_CopyLString((char *)&unk_58, &DAT_0208a564, 0x60);
    }

    if (arg1 == 2) {
        unk_4C = NNS_FndGetArchiveFileByName(path);

        if (unk_4C != NULL) {
            FS_InitFile(&file);
            FS_OpenFile(&file, path);

            unk_50 = file.prop.dir.pos.pos - file.prop.file.top;
            FS_CloseFile(&file);
            unk_54 = 0;
        }

        return unk_4C;
    }

    void *v0 = sub_02002DD0(path, arg1, arg2, arg4, arg5);

    if (v0 != NULL) {
        DC_FlushRange(v0, unk_50);

        if (arg4 != 0) {
            unk_54 = 0;
        }
    }

    return v0;
}

void *CBinaryFile::sub_02002DD0(const char *path, u32 arg1, u32 arg2, void *arg3, u32 arg4)
{
    FS_InitFile(&file);
    BOOL v0 = FS_OpenFile(&file, path);

    if (!v0) {
        return NULL;
    }

    unk_50 = file.prop.dir.pos.pos - file.prop.file.top;

    if (arg3 == NULL || arg2 != 0) {
        if (arg2 != 0) {
            if (unk_50 > 0x20000) {
                OS_Terminate();
            }

            unk_4C = &MAIN_BSS_0208F320;
        } else {
            u32 v1;

            if (arg1 == 0) {
                v1 = 4;
            } else {
                v1 = -4;
            }

            if (arg2 != 0) {
                v1 *= -1;
            }

            unk_54 = 1;
            unk_4C = Heap_AllocWithAlignment(unk_50, v1);

            if (unk_4C == NULL) {
                NNSFndHeapHandle *v2 = Heap_GetMainHandle();
                NNS_FndGetAllocatableSizeForExpHeapEx(*v2, 4);
                NNS_FndGetTotalFreeSizeForExpHeap(*v2);

                FS_CloseFile(&file);
                return NULL;
            }
        }
    } else {
        if (arg4 < unk_50) {
            FS_CloseFile(&file);
            return NULL;
        }

        unk_4C = arg3;
    }

    if (MAIN_BSS_0208F31C == 0) {
        s32 v3 = FS_ReadFile(&file, unk_4C, unk_50);

        if (unk_50 != v3) {
            if (arg3 != unk_4C && arg2 == 0 && unk_4C != NULL) {
                Heap_Free(unk_4C);
                unk_4C = NULL;
            }

            FS_CloseFile(&file);
            return NULL;
        }
    } else {
        void *v4 = unk_4C;
        u32 v5 = unk_50;

        while (v5) {
            s32 v6 = FS_ReadFile(&file, v4, 0x200);

            if (v6 < 0) {
                if (arg3 != unk_4C && arg2 == 0 && unk_4C != NULL) {
                    Heap_Free(unk_4C);
                    unk_4C = NULL;
                }

                FS_CloseFile(&file);
                return NULL;
            }

            v4 = (u8 *)v4 + v6;

            if (v5 < v6) {
                v5 = 0;
            } else {
                v5 -= v6;
            }
        }
    }

    if (arg2 != 0) {
        unk_50 = *((u32 *)unk_4C) >> 8;
        s32 v7 = *((s32 *)unk_4C) & 0xF0;

        if (arg3 == NULL) {
            arg3 = Heap_AllocWithAlignment(unk_50, arg1 == 0 ? 4 : -4);

            if (arg3 == NULL) {
                NNSFndHeapHandle *v12 = Heap_GetMainHandle();
                NNS_FndGetAllocatableSizeForExpHeapEx(*v12, 4);
                NNS_FndGetTotalFreeSizeForExpHeap(*v12);

                FS_CloseFile(&file);
                return NULL;
            }
        } else if (arg4 < unk_50) {
            FS_CloseFile(&file);
            return NULL;
        }

        switch (v7) {
        case 0x10:
            MI_UncompressLZ8(unk_4C, arg3);
            break;

        case 0x20:
            MI_UncompressHuffman(unk_4C, arg3);
            break;

        case 0x30:
            MI_UncompressRL8(unk_4C, arg3);
            break;

        case 0x80:
            MI_UnfilterDiff8(unk_4C, arg3);
            break;

        default:
            break;
        }

        unk_4C = arg3;
    }

    FS_CloseFile(&file);
    return unk_4C;
}

void CBinaryFile::sub_020030D4()
{
    if (unk_54 != 0 && unk_4C != NULL) {
        Heap_Free(unk_4C);
        unk_4C = NULL;
    }

    sub_02002C9C();
}

BOOL CBinaryFile::sub_02003108(const char *path)
{
    FSFileID fileID;
    return FS_ConvertPathToFileID(&fileID, path);
}
