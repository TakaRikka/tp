#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_audio.h"
#include "gz/gz_menu.h"

/*
 *  TPGZ version
 */ 
static const char* gzVersion = "0.0.1";

/*
 *  GZ menu open / closed state
 */ 
bool gzMenu::mDisplay = false;

/*
 *  GZ menu wait timer before gaining control
 */ 
u8 gzMenu::mControlWait = 0;

/*
 *  GZ menu cursor color
 */ 
u32 gzMenu::mCursorColor = 0xEE8000FF;

/*
 *  GZ menu archive pointer
 */ 
mDoDvdThd_mountXArchive_c* gzMenu::mpMenuArc = NULL;


/*
 *  Base GZ menu constructor
 *  Sets up the archive pointer, black background, midna icon, and "tpgz" header text
 */ 
void gzMenu::ct() {
    mpMenuArc = mDoDvdThd_mountXArchive_c::create("/res/gz/gzMenus.arc", 0, JKRArchive::MOUNT_MEM, NULL);
    
    ResTIMG* bg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', "tt_block8x8.bti");
    mpBackground = new J2DPicture(bg);

    ResTIMG* img = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', "midona64.bti");
    mpIcon = new J2DPicture(img);

    mpHeader = new gzTextBox();

    char header[12];
    sprintf(header, "tpgz v%s", gzVersion);
    mpHeader->init(header);

    mCursor.reset();  // this is probably gonna cause issues, but fixes other issues. remove later
}

gzMenu::~gzMenu() {
    _delete();
}

/*
 *  Base GZ menu drawing
 *  Draws menu objects that will be displayed on every menu
 */ 
void gzMenu::drawBase() {
    if (mDisplay) {
        if (mpBackground != NULL) {
            mpBackground->mWhite = 0x000000D0;  // BG Color
            mpBackground->draw(0.0f, 0.0f, 608.0f, 448.0f, false, false, false);
        }

        if (mpIcon != NULL) {
            mpIcon->draw(30.0f, 5.0f, 30.0f, 30.0f, false, false, false);
        }

        if (mpHeader != NULL) {
            mpHeader->mCharColor = mCursorColor;
            mpHeader->mGradientColor = mCursorColor;
            mpHeader->_draw(65.0f, 30.0f);
        }
    }
}

void gzSetCurrentMenu(gzMenu* menu) {
    g_meter2_info.mMeterClass->mpGZCurrentMenu = menu;
    gzMenu::mControlWait = 5;
}

gzTextBox::gzTextBox() : J2DTextBox() {
    setFont(mDoExt_getMesgFont());
    setFontSize(18.0f, 18.0f);
    mToggleable = false;
    mActive = false;
}

void gzTextBox::_draw(f32 x, f32 y) {
    draw(x, y, 608.0f, HBIND_LEFT);
}

void gzTextBox::init(const char* text, bool toggle) {
    setString(text);
    mToggleable = toggle;
}

void gzTextBox::init(const char* text) {
    setString(text);
}

void gzTextBox::setColor(u32 color) {
    mCharColor = color;
    mGradientColor = color;
} 
