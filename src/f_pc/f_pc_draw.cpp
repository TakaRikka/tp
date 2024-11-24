/**
 * f_pc_draw.cpp
 * Framework - Process Draw
 */

#include "f_pc/f_pc_draw.h"
#include "SSystem/SComponent/c_API_graphic.h"
#include "f_pc/f_pc_leaf.h"
#include "f_pc/f_pc_node.h"
#include "f_pc/f_pc_pause.h"

/* 80023954-800239F4 00A0+00 s=0 e=1 z=0  None .text      fpcDw_Execute__FP18base_process_class */
s32 fpcDw_Execute(base_process_class* i_proc) {
    if (!fpcPause_IsEnable(i_proc, 2)) {
        layer_class* save_layer;
        s32 ret;
        process_method_func draw_func;
    
        save_layer = fpcLy_CurrentLayer();
        if (fpcBs_Is_JustOfType(g_fpcLf_type, i_proc->subtype)) {
            draw_func = ((leafdraw_method_class*)i_proc->methods)->draw_method;
        } else {
            draw_func = ((nodedraw_method_class*)i_proc->methods)->draw_method;
        }
    
        fpcLy_SetCurrentLayer(i_proc->layer_tag.layer);
        ret = draw_func(i_proc);
        fpcLy_SetCurrentLayer(save_layer);
        return ret;
    }

    return 0;
}

/* 800239F4-80023A48 0054+00 s=0 e=2 z=10  None .text      fpcDw_Handler__FPFPFPvPv_i_iPFPvPv_i */
s32 fpcDw_Handler(fpcDw_HandlerFuncFunc i_iterHandler, fpcDw_HandlerFunc i_func) {
    s32 ret;
    cAPIGph_BeforeOfDraw();
    ret = i_iterHandler(i_func);
    cAPIGph_AfterOfDraw();
    return ret;
}
