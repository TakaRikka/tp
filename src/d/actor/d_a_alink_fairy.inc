#include "d/actor/d_a_alink.h"
#include "d/d_com_inf_game.h"
#include "SSystem/SComponent/c_lib.h"

// static int debugRegs[8] = {0};

void daAlink_c::createFairy() {
    if (mFairy.mpAnmModel != NULL) {
        mFairy.mpAnmModel->setPlaySpeed(0.7f);
    }

    // OSReport("debugRegs addr: %8X\n", debugRegs);

    mFairy.setColor(89, 255, 250, 255);

    mFairy.mMoveHTimer = 0;
    mFairy.mFollowSpeed = 10.0f;
}

void daAlink_c::executeFairy() {
    mFairy.mMoveHTimer++;

    cXyz pos;
    cXyz offset;

    if (mTargetedActor != NULL) {
        offset.set(0.0f, 75.0f, 20.0f);
        cLib_offsetPos(&pos, &mTargetedActor->eyePos,
                       mTargetedActor->shape_angle.y, &offset);
    } else {
        const f32 x_amp = 25.0f;
        const f32 z_amp = 12.5f;
        const f32 move_speed = 0.05f;

        offset.x = -40.0f + (x_amp * cosf(mFairy.mMoveHTimer * move_speed));
        offset.y = 190.0f;
        offset.z = -30.0f + (z_amp * sinf(mFairy.mMoveHTimer * move_speed * 2));

        cLib_offsetPos(&pos, &current.pos, current.angle.y, &offset);
        mFairy.mAngle.y = cLib_targetAngleY(mFairy.mPosition, pos);
    }

    if ((current.pos - mFairy.mPosition).absXZ() > 100.0f) {
        cLib_chaseF(&mFairy.mFollowSpeed, 50.0f, 1.0f);
    } else {
        cLib_chaseF(&mFairy.mFollowSpeed, 10.0f, 1.0f);
    }

    if (mTargetedActor != NULL) {
        cLib_chasePos(&mFairy.mPosition, pos, 200.0f);
    } else {
        cLib_chasePos(&mFairy.mPosition, pos, mFairy.mFollowSpeed);
    }

    if (mFairy.mpAnmModel != NULL) {
        mFairy.mGlowEmitterID = dComIfGp_particle_set(mFairy.mGlowEmitterID, ID_ZF_J_FAIRY00_GLOW, &mFairy.mPosition, &tevStr, &mFairy.mAngle,
                                                      NULL, 0xFF, NULL, -1, &mFairy.mColor, &mFairy.mColor, NULL);
        mFairy.mStarEmitterID = dComIfGp_particle_set(mFairy.mStarEmitterID, ID_ZF_J_FAIRY02_STAR, &mFairy.mPosition, &tevStr, &mFairy.mAngle,
                                                      NULL, 0xFF, NULL, -1, &mFairy.mColor, &mFairy.mColor, NULL);

        mFairy.mpAnmModel->play(0, dComIfGp_getReverb(current.roomNo));

        mDoMtx_stack_c::transS(mFairy.mPosition);
        mDoMtx_stack_c::ZXYrotM(mFairy.mAngle);
        mFairy.mpAnmModel->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
        mFairy.mpAnmModel->modelCalc();
    }
}

void daAlink_c::drawFairy() {
    if (mFairy.mpAnmModel != NULL) {
        g_env_light.setLightTevColorType_MAJI(mFairy.mpAnmModel->getModel()->getModelData(), &tevStr);
        mFairy.mpAnmModel->entryDL();
    }
}
