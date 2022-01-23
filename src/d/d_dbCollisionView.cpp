#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"
#include "JSystem/J3DGraphBase/J3DPacket.h"
#include "d/com/d_com_inf_game.h"
#include "m_Do/m_Do_mtx.h"

static cXyz size(100.0f, 100.0f, 100.0f);
static GXColor color = {200, 0, 0, 200};

void dDbVw_drawCubeXlu(cXyz&, cXyz&, csXyz&, const GXColor&);

void dbCcView_execute() {
    /* printf("\n--- dbCcView_execute() ---\n");
    printf("mObjTgCount = %d\n", g_dComIfG_gameInfo.play.mDCcS.mObjTgCount);
    printf("mObjAtCount = %d\n", g_dComIfG_gameInfo.play.mDCcS.mObjAtCount);
    printf("mObjCoCount = %d\n", g_dComIfG_gameInfo.play.mDCcS.mObjCoCount);
    printf("mObjCount = %d\n", g_dComIfG_gameInfo.play.mDCcS.mObjCount); */
    //daAlink_c* link = (daAlink_c*)dComIfGp_getPlayer(0);
    //static cXyz tmpPos(0.0f, 900.0f, -1800.0f);
    //static csXyz tmpAng(0, 0, 0);
    /* if (link != NULL) {
        dDbVw_drawCubeXlu(link->mCurrent.mPosition, size, link->mCurrent.mAngle, color);
    } */

    /* for (int i = 0; i < g_dComIfG_gameInfo.play.mDCcS.mObjTgCount; i++) {
        printf("dbCcView_execute() run -- i:%d", i);
        cCcD_Obj* obj = g_dComIfG_gameInfo.play.mDCcS.mpObjTg[i];
        if (obj != NULL) {
            obj->Draw(color);
            //dDbVw_drawCubeXlu(, size, link->mCurrent.mAngle, color);
        }
    } */
}

class mDoExt_cubePacket : public J3DPacket {
public:
    mDoExt_cubePacket(cXyz& position, cXyz& size, csXyz& angle, const GXColor& color) {
        mPosition = position;
        mSize = size;
        mAngle = angle;
        mColor = color;
    }
    void draw();
    virtual ~mDoExt_cubePacket() {}

    /* 0x10 */ cXyz mPosition;
    /* 0x1C */ cXyz mSize;
    /* 0x28 */ csXyz mAngle;
    /* 0x2E */ GXColor mColor;
};

void drawCube(MtxP mtx, cXyz* array, const GXColor& color) {
    GXSetArray(GX_VA_POS, array, sizeof(cXyz));
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX8);
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0, GX_DISABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_CLAMP, GX_AF_NONE);
    GXSetNumTexGens(0);
    GXSetNumTevStages(1);
    GXSetTevColor(GX_TEVREG0, color);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_ENABLE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_ENABLE, GX_TEVPREV);
    GXSetZMode(GX_ENABLE, GX_LEQUAL, GX_ENABLE);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_CLEAR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetCullMode(GX_CULL_BACK);
    GXSetClipMode(GX_DISABLE);
    GXLoadPosMtxImm(mtx, 0);
    GXSetCurrentMtx(0);

    GXBegin(GX_TRIANGLESTRIP, GX_VTXFMT0, 14);
    GXPosition1x8(4);
    GXPosition1x8(6);
    GXPosition1x8(5);
    GXPosition1x8(7);
    GXPosition1x8(3);
    GXPosition1x8(6);
    GXPosition1x8(2);
    GXPosition1x8(4);
    GXPosition1x8(0);
    GXPosition1x8(5);
    GXPosition1x8(1);
    GXPosition1x8(3);
    GXPosition1x8(0);
    GXPosition1x8(2);
    GXEnd();
}


static cXyz tmp_arr[8] = {
    cXyz(-1.0f, 1.0f, -1.0f),
    cXyz(1.0f, 1.0f, -1.0f),
    cXyz(-1.0f, 1.0f, 1.0f),
    cXyz(1.0f, 1.0f, 1.0f),
    cXyz(-1.0f, -1.0f, -1.0f),
    cXyz(1.0f, -1.0f, -1.0f),
    cXyz(-1.0f, -1.0f, 1.0f),
    cXyz(1.0f, -1.0f, 1.0f),
};

void mDoExt_cubePacket::draw() {
    static bool init = false;

    if (!init) {
        init = true;
    }
    mDoMtx_stack_c::transS(mPosition.x, mPosition.y, mPosition.z);
    mDoMtx_stack_c::XYZrotM(mAngle.x, mAngle.y, mAngle.z);
    mDoMtx_stack_c::scaleM(mSize.x, mSize.y, mSize.z);
    mDoMtx_stack_c::revConcat(j3dSys.getViewMtx());
    drawCube(mDoMtx_stack_c::get(), tmp_arr, mColor);
} 

bool dDbVw_setDrawPacketList(J3DPacket* p_packet, int buf_type) {
    if (p_packet != NULL) {
        j3dSys.getDrawBuffer(buf_type)->entryImm(p_packet, 0);
    }
    return true;
}

void dDbVw_drawCubeXlu(cXyz& pos, cXyz& size, csXyz& angle, const GXColor& color) {
    mDoExt_cubePacket* cube = new mDoExt_cubePacket(pos, size, angle, color);
    dDbVw_setDrawPacketList(cube, 1);
}