#ifndef D_DB_COLLISIONVIEW
#define D_DB_COLLISIONVIEW

#include "dolphin/gx/GX.h"
#include "dolphin/mtx/mtx.h"

class cXyz;
class csXyz;

inline void dDbVw_drawCubeXlu(cXyz&, cXyz&, csXyz&, const GXColor&);
inline void drawCube(MtxP, cXyz*, const GXColor&);

#endif /* D_DB_COLLISIONVIEW */