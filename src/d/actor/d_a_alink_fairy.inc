#include "d/actor/d_a_alink.h"
#include "d/d_com_inf_game.h"
#include "SSystem/SComponent/c_lib.h"

// static int debugRegs[8] = {0};

void daAlink_c::createFairy() {
    mFairy.mIsHide = true;

    if (mFairy.mpAnmModel != NULL) {
        mFairy.mpAnmModel->setPlaySpeed(0.7f);
    }

    // OSReport("debugRegs addr: %8X\n", debugRegs);

    mFairy.setColor(89, 255, 250, 255);

    mFairy.mMoveHTimer = 0;
    mFairy.mFollowSpeed = 10.0f;
    mFairy.mAction = 1;
}

void daAlink_c::executeFairy() {
    switch (mFairy.mAction) {
    case 0: {
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
            if (fopAcM_GetGroup(mTargetedActor) == fopAc_ENEMY_e) {
                mFairy.setColor(255, 0, 0, 255);
            } else if (fopAcM_GetGroup(mTargetedActor) == fopAc_NPC_e) {
                mFairy.setColor(0, 255, 0, 255);
            } else {
                mFairy.setColor(238, 255, 89, 255);
            }

            cLib_chasePos(&mFairy.mPosition, pos, 200.0f);
        } else {
            mFairy.setColor(89, 255, 250, 255);
            cLib_chasePos(&mFairy.mPosition, pos, mFairy.mFollowSpeed);
        }
        break;
    }
    case 1:
        if (cLib_chasePos(&mFairy.mPosition, mHeadTopPos, 30.0f)) {
            mFairy.mIsHide = true;
        }
        break;
    }

    if (mFairy.mpAnmModel != NULL && !mFairy.mIsHide) {
        mFairy.mGlowEmitterID = dComIfGp_particle_set(mFairy.mGlowEmitterID, ID_ZF_J_FAIRY00_GLOW, &mFairy.mPosition, &tevStr, &mFairy.mAngle,
                                                      NULL, 0xFF, NULL, -1, &mFairy.mColor, &mFairy.mColor, NULL);
        mFairy.mStarEmitterID = dComIfGp_particle_set(mFairy.mStarEmitterID, ID_ZF_J_FAIRY02_STAR, &mFairy.mPosition, &tevStr, &mFairy.mAngle,
                                                      NULL, 0xFF, NULL, -1, &mFairy.mColor, &mFairy.mColor, NULL);

        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mFairy.mGlowEmitterID);
        if (emitter != NULL) {
            emitter->setGlobalPrmColor(mFairy.mColor.r, mFairy.mColor.g, mFairy.mColor.b);
            emitter->setGlobalEnvColor(mFairy.mColor.r, mFairy.mColor.g, mFairy.mColor.b);
        }

        emitter = dComIfGp_particle_getEmitter(mFairy.mStarEmitterID);
        if (emitter != NULL) {
            emitter->setGlobalPrmColor(mFairy.mColor.r, mFairy.mColor.g, mFairy.mColor.b);
            emitter->setGlobalEnvColor(mFairy.mColor.r, mFairy.mColor.g, mFairy.mColor.b);
        }

        mFairy.mpAnmModel->play(0, dComIfGp_getReverb(current.roomNo));

        mDoMtx_stack_c::transS(mFairy.mPosition);
        mDoMtx_stack_c::ZXYrotM(mFairy.mAngle);
        mFairy.mpAnmModel->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
        mFairy.mpAnmModel->modelCalc();
    }
}

void daAlink_c::drawFairy() {
    if (mFairy.mIsHide) {
        return;
    }

    if (mFairy.mpAnmModel != NULL) {
        g_env_light.setLightTevColorType_MAJI(mFairy.mpAnmModel->getModel()->getModelData(), &tevStr);
        mFairy.mpAnmModel->entryDL();
    }
}
