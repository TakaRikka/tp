#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_audio.h"
#include "gz/gz_menu.h"

gzCheatMenu::gzCheatMenu() {
    for (int i = 0; i < LINE_NUM; i++) {
        mpLines[i] = new gzTextBox();
    }

    mpLines[0]->init("[ ] infinite air", true);
    mpLines[1]->init("[ ] infinite arrows", true);
    mpLines[2]->init("[ ] infinite bombs", true);
    mpLines[3]->init("[ ] infinite hearts", true);
    mpLines[4]->init("[ ] infinite oil", true);
    mpLines[5]->init("[ ] infinite rupees", true);
    mpLines[6]->init("[ ] infinite slingshot", true);
    mpLines[7]->init("[ ] invincible", true);
    mpLines[8]->init("[ ] invincible enemies", true);
    mpLines[9]->init("[ ] moon jump", true);
    mpLines[10]->init("[ ] disable walls", true);
    mpLines[11]->init("[ ] super clawshot", true);
    mpLines[12]->init("[ ] unrestricted items", true);
    mpLines[13]->init("[ ] transform anywhere", true);
}

gzCheatMenu::~gzCheatMenu() {
    _delete();
}

void gzCheatMenu::_delete() {
    for (int i = 0; i < LINE_NUM; i++) {
        delete mpLines[i];
        mpLines[i] = NULL;
    }
}

void gzCheatMenu::execute() {
    if (mDoCPd_c::getHoldL(0) && mDoCPd_c::getHoldR(0) && mDoCPd_c::getTrigDown(0)) {
        mDisplay = !mDisplay;
    }

    if (mControlWait > 0) {
        mControlWait--;
    }

    if (mDisplay && mControlWait == 0) {
        if (mDoCPd_c::getTrigB(0)) {
            g_meter2_info.mMeterClass->mpGZMenu = new gzMainMenu();
            gzSetCurrentMenu(g_meter2_info.mMeterClass->mpGZMenu);
            delete g_meter2_info.mMeterClass->mpGZCheatMenu;
        }

        if (mDoCPd_c::getTrigA(0)) {
            if (mpLines[mCursor.y]->mToggleable) {
                mpLines[mCursor.y]->mActive = !mpLines[mCursor.y]->mActive;
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

void gzCheatMenu::draw() {
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

            if (mpLines[i]->mActive) {
                //mpLines[i]->mBlackColor = 0xA0000040;
                mpLines[i]->mStringPtr[1] = 'X';
            } else {
                mpLines[i]->mStringPtr[1] = ' ';
                //mpLines[i]->mBlackColor = 0;
            }
        }
    }
}
