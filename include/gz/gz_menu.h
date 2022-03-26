#ifndef GZ_MENU_H
#define GZ_MENU_H

#include "dolphin/types.h"
#include "d/d_drawlist.h"
#include "JSystem/J2DGraph/J2DTextBox.h"

struct gzmHeader {
	/* 0x00 */ unsigned int mTag;  // GZM1
	/* 0x04 */ int mEntryNum;
	/* 0x08 */ int mHeaderSize;
	/* 0x0C */ unsigned int mStringDataOffset;
};

struct gzmEntry {
	/* 0x00 */ int mStringID;
	/* 0x04 */ f32 mPosX;
	/* 0x08 */ f32 mPosY;
	/* 0x0C */ f32 mScale;
	/* 0x10 */ bool mToggleable;
	u8 padding[3];
};

struct gzTextBox : public J2DTextBox {
    gzTextBox();
    virtual ~gzTextBox() {}
    void init(const char* text, bool toggle);
    void init(const char* text);
    void setColor(u32 color);
    void _draw(f32 x, f32 y);

    /* 0x134 */ bool mToggleable;
    /* 0x135 */ bool mActive;
};

class gzMenu : public dDlst_base_c {
public:
    struct gzCursor {
        void reset() {
            x = 0;
            y = 0;
        }

        int x;
        int y;
    };

    gzMenu() {
        ct();
    }
    void ct();
    void drawBase();
    virtual void _delete() {
        delete mpBackground;
        mpBackground = NULL;

        delete mpIcon;
        mpIcon = NULL;

        delete mpHeader;
        mpHeader = NULL;
    }
    virtual void execute() {}
    virtual ~gzMenu();

    static bool mDisplay;
    static u8 mControlWait;
    static u32 mCursorColor;
    static mDoDvdThd_mountXArchive_c* mpMenuArc;

    J2DPicture* mpBackground;
    J2DPicture* mpIcon;
    gzTextBox* mpHeader;
    gzCursor mCursor;
};

class gzMainMenu : public gzMenu {
public:
    gzMainMenu();
    virtual void draw();
    virtual void _delete();
    virtual void execute();
    virtual ~gzMainMenu();

    static const int LINE_NUM = 9;

    gzTextBox* mpLines[LINE_NUM];
};

class gzCheatMenu : public gzMenu {
public:
    gzCheatMenu();
    virtual void draw();
    virtual void _delete();
    virtual void execute();
    virtual ~gzCheatMenu();

    static const int LINE_NUM = 14;

    gzTextBox* mpLines[LINE_NUM];
};

void gzSetCurrentMenu(gzMenu* menu);

#endif /* GZ_MENU_H */
