#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_audio.h"
#include "gz/gz_menu.h"

gzMainMenu::gzMainMenu() {
    for (int i = 0; i < LINE_NUM; i++) {
        mpLines[i] = new gzTextBox();
    }

    /* gzmHeader* res = (gzmHeader*)JKRArchive::getGlbResource('ROOT', "main.gzm", mpMenuArc->mArchive);
    u32 offset = res->mStringDataOffset;
    char* string_p = (char*)res + offset;

    int lineNum = res->mEntryNum;
    for (int i = 0; i < lineNum; i++) {
        mpLines[i]->setString(string_p);
    } */

    mpLines[0]->init("cheats");
    mpLines[1]->init("flags");
    mpLines[2]->init("inventory");
    mpLines[3]->init("memory");
    mpLines[4]->init("practice");
    mpLines[5]->init("scene");
    mpLines[6]->init("settings");
    mpLines[7]->init("tools");
    mpLines[8]->init("warping");
}

gzMainMenu::~gzMainMenu() {
    _delete();
}

void gzMainMenu::_delete() {
    for (int i = 0; i < LINE_NUM; i++) {
        delete mpLines[i];
        mpLines[i] = NULL;
    }
}

void gzMainMenu::execute() {
    if (mDoCPd_c::getHoldL(0) && mDoCPd_c::getHoldR(0) && mDoCPd_c::getTrigDown(0)) {
        mDisplay = !mDisplay;
    }

    if (mControlWait > 0) {
        mControlWait--;
    }

    if (mDisplay && mControlWait == 0) {
        if (mDoCPd_c::getTrigB(0)) {
            mDisplay = false;
        }

        if (mDoCPd_c::getTrigA(0)) {
            if (mCursor.y == 0) {
                g_meter2_info.mMeterClass->mpGZCheatMenu = new gzCheatMenu();
                gzSetCurrentMenu(g_meter2_info.mMeterClass->mpGZCheatMenu);
                delete g_meter2_info.mMeterClass->mpGZMenu;
            }
        }

        if (mDoCPd_c::getTrigDown(0) && mCursor.y < LINE_NUM) {
            mCursor.y++;
        }

        if (mDoCPd_c::getTrigUp(0) && mCursor.y >= 0) {
            mCursor.y--;
        }

        if (mCursor.y < 0) {
            mCursor.y = LINE_NUM - 1;
        } else if (mCursor.y > LINE_NUM - 1) {
            mCursor.y = 0;
        }
    }
}

void gzMainMenu::draw() {
    drawBase();

    if (mDisplay) {
        for (int i = 0; i < LINE_NUM; i++) {
            if (mpLines[i] != NULL) {
                mpLines[i]->_draw(30.0f, 90.0f + ((i - 1) * 22.0f));
            }

            if (mCursor.y == i) {
                mpLines[i]->setColor(mCursorColor);
            } else {
                mpLines[i]->setColor(0xC8C8C8FF);
            }
        }
    }
}
