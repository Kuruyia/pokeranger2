#include "primitive/CSoftwareSprite.hpp"

#include <nitro.h>
#include <nnsys.h>

extern "C" {
extern NNSGfdPlttKey MAIN_BSS_020AF320;
extern NNSG2dImagePaletteProxy MAIN_BSS_020AF324;
extern NNSG2dPaletteData DAT_0208a7a4;
}

u32 CSoftwareSprite::sub_020050C8()
{
    MAIN_BSS_020AF320 = NNS_GfdAllocLnkPlttVram(0x20, FALSE, 0);
    NNS_G2dInitImagePaletteProxy(&MAIN_BSS_020AF324);
    NNS_G2dLoadPalette(&DAT_0208a7a4, (MAIN_BSS_020AF320 << 16) >> 13, NNS_G2D_VRAM_TYPE_3DMAIN, &MAIN_BSS_020AF324);

    return 1;
}

u32 CSoftwareSprite::sub_02005120()
{
    if (MAIN_BSS_020AF320 != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        NNS_GfdFreeLnkPlttVram(MAIN_BSS_020AF320);
        MAIN_BSS_020AF320 = NNS_GFD_ALLOC_ERROR_PLTTKEY;
    }

    return 1;
}

CSoftwareSprite::CSoftwareSprite()
{
    unk_2C = 0;
    unk_30 = 0;
    unk_34 = 0;
    unk_38 = 0;
    unk_2A = 0;

    sub_020051F8(0, 0, 0x1000, 0x1000, 0, 0);

    unk_3C = 0;
    unk_46 = 0;
    unk_44 = 0;
    unk_42 = 0;
    unk_40 = 0;
    unk_48 = 0;
}
