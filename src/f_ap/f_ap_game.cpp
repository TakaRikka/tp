#include "f_ap/f_ap_game.h"
#include "SSystem/SComponent/c_counter.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "f_op/f_op_camera_mng.h"
#include "f_op/f_op_draw_tag.h"
#include "f_op/f_op_overlap_mng.h"
#include "f_op/f_op_scene_mng.h"
#include "f_pc/f_pc_manager.h"
#include "m_Do/m_Do_main.h"
//#include "m_Do/m_Do_ext.h"
#include "d/com/d_com_inf_game.h"

fapGm_HIO_c::fapGm_HIO_c()
    : mColor(-1), mLetterTopColor(-1), mLetterBottomColor(-1), mLetterTopShadowColor(-1),
      mLetterBottomShadowColor(-1) {
    mUsingHostIO = true;

    if (data_80450580) {
        mDisplayMeter = true;
        mDisplayPrint = true;
    } else {
        mDisplayMeter = false;
        mDisplayPrint = false;
        mDisplay2D = false;
    }

    mDisplay2D = true;
    mDisplayParticle = true;
    mDisplayProcessID = false;
    mMemBlockOff = false;
    mColor.set(255, 255, 255, 255);
    field_0xc = 0.9f;
    field_0x10 = 0.6f;
    mLetterTopColor.set(255, 150, 0, 255);
    mLetterBottomColor.set(255, 120, 0, 255);
    mLetterTopShadowColor.set(0, 0, 0, 255);
    mLetterBottomShadowColor.set(0, 0, 0, 255);
    mLetterPositionX = 0;
    mLetterPositionY = 10;
    mLetterFontSize = 27;
    mLineSpacing = 0;
    mLetterSpacing = 0;
    mBackgroundAlpha = 130;
}

void fapGm_After() {
    fopScnM_Management();
    fopOvlpM_Management();
    fopCamM_Management();
}

void fapGm_Execute() {
    fpcM_Management(NULL, fapGm_After);
    cCt_Counter(0);

    /* if (dComIfGp_getPlayer(0) != NULL) {
        daAlink_c* link = (daAlink_c*)dComIfGp_getPlayer(0);
        cXyz size(100.0f, 100.0f, 100.0f);
        GXColor color = {200, 0, 0, 200}; 
        dDbVw_drawCubeXlu(link->mCurrent.mPosition, size, link->mCurrent.mAngle, color);
    } */
}

fapGm_HIO_c g_HIO;

void fapGm_Create() {
    fpcM_Init();
    fopScnM_Init();
    fopOvlpM_Init();
    fopCamM_Init();
    fopDwTg_CreateQueue();
    g_HIO.field_0x04 = -1;
}

fapGm_HIO_c::~fapGm_HIO_c() {}