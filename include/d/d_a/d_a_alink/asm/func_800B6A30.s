/* 800B6A30 000B3970  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 800B6A34 000B3974  7C 08 02 A6 */ mflr r0
/* 800B6A38 000B3978  90 01 00 64 */ stw r0, 0x64(r1)
/* 800B6A3C 000B397C  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 800B6A40 000B3980  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 800B6A44 000B3984  39 61 00 50 */ addi r11, r1, 0x50
/* 800B6A48 000B3988  48 2A B7 95 */ bl _savegpr_29
/* 800B6A4C 000B398C  7C 7E 1B 78 */ mr r30, r3
/* 800B6A50 000B3990  4B FF 98 6D */ bl daAlink_c_NS_setFrontWallType
/* 800B6A54 000B3994  AB FE 30 78 */ lha r31, 0x3078(r30)
/* 800B6A58 000B3998  38 00 00 00 */ li r0, 0
/* 800B6A5C 000B399C  B0 1E 30 78 */ sth r0, 0x3078(r30)
/* 800B6A60 000B39A0  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800B6A64 000B39A4  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800B6A68 000B39A8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B6A6C 000B39AC  41 81 00 18 */ bgt lbl_800B6A84
/* 800B6A70 000B39B0  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800B6A74 000B39B4  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B6A78 000B39B8  40 82 00 0C */ bne lbl_800B6A84
/* 800B6A7C 000B39BC  38 60 00 00 */ li r3, 0
/* 800B6A80 000B39C0  48 00 04 88 */ b lbl_800B6F08
lbl_800B6A84:
/* 800B6A84 000B39C4  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800B6A88 000B39C8  54 03 07 BD */ rlwinm. r3, r0, 0, 0x1e, 0x1e
/* 800B6A8C 000B39CC  41 82 01 E4 */ beq lbl_800B6C70
/* 800B6A90 000B39D0  88 7E 2F 91 */ lbz r3, 0x2f91(r30)
/* 800B6A94 000B39D4  28 03 00 0A */ cmplwi r3, 0xa
/* 800B6A98 000B39D8  40 82 00 5C */ bne lbl_800B6AF4
/* 800B6A9C 000B39DC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B6AA0 000B39E0  D0 21 00 2C */ stfs f1, 0x2c(r1)
/* 800B6AA4 000B39E4  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B6AA8 000B39E8  D0 01 00 30 */ stfs f0, 0x30(r1)
/* 800B6AAC 000B39EC  D0 21 00 34 */ stfs f1, 0x34(r1)
/* 800B6AB0 000B39F0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B6AB4 000B39F4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6AB8 000B39F8  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800B6ABC 000B39FC  38 80 00 02 */ li r4, 2
/* 800B6AC0 000B3A00  38 A0 00 01 */ li r5, 1
/* 800B6AC4 000B3A04  38 C1 00 2C */ addi r6, r1, 0x2c
/* 800B6AC8 000B3A08  4B FB 8F 5D */ bl dVibration_c_NS_StartShock
/* 800B6ACC 000B3A0C  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B6AD0 000B3A10  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6AD4 000B3A14  41 82 00 14 */ beq lbl_800B6AE8
/* 800B6AD8 000B3A18  7F C3 F3 78 */ mr r3, r30
/* 800B6ADC 000B3A1C  38 80 00 08 */ li r4, 8
/* 800B6AE0 000B3A20  48 07 EC 11 */ bl daAlink_c_NS_procWolfHangWallCatchInit
/* 800B6AE4 000B3A24  48 00 04 24 */ b lbl_800B6F08
lbl_800B6AE8:
/* 800B6AE8 000B3A28  7F C3 F3 78 */ mr r3, r30
/* 800B6AEC 000B3A2C  48 04 3F 91 */ bl daAlink_c_NS_procHangStartInit
/* 800B6AF0 000B3A30  48 00 04 18 */ b lbl_800B6F08
lbl_800B6AF4:
/* 800B6AF4 000B3A34  28 03 00 0B */ cmplwi r3, 0xb
/* 800B6AF8 000B3A38  40 82 00 40 */ bne lbl_800B6B38
/* 800B6AFC 000B3A3C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B6B00 000B3A40  D0 21 00 20 */ stfs f1, 0x20(r1)
/* 800B6B04 000B3A44  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B6B08 000B3A48  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 800B6B0C 000B3A4C  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 800B6B10 000B3A50  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B6B14 000B3A54  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6B18 000B3A58  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800B6B1C 000B3A5C  38 80 00 02 */ li r4, 2
/* 800B6B20 000B3A60  38 A0 00 01 */ li r5, 1
/* 800B6B24 000B3A64  38 C1 00 20 */ addi r6, r1, 0x20
/* 800B6B28 000B3A68  4B FB 8E FD */ bl dVibration_c_NS_StartShock
/* 800B6B2C 000B3A6C  7F C3 F3 78 */ mr r3, r30
/* 800B6B30 000B3A70  48 04 52 D5 */ bl daAlink_c_NS_procHangWallCatchInit
/* 800B6B34 000B3A74  48 00 03 D4 */ b lbl_800B6F08
lbl_800B6B38:
/* 800B6B38 000B3A78  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B6B3C 000B3A7C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6B40 000B3A80  40 82 03 C4 */ bne lbl_800B6F04
/* 800B6B44 000B3A84  28 03 00 03 */ cmplwi r3, 3
/* 800B6B48 000B3A88  40 82 00 50 */ bne lbl_800B6B98
/* 800B6B4C 000B3A8C  A8 7E 30 6E */ lha r3, 0x306e(r30)
/* 800B6B50 000B3A90  3C 63 00 01 */ addis r3, r3, 1
/* 800B6B54 000B3A94  38 03 80 00 */ addi r0, r3, -32768
/* 800B6B58 000B3A98  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
/* 800B6B5C 000B3A9C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B6B60 000B3AA0  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 800B6B64 000B3AA4  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B6B68 000B3AA8  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800B6B6C 000B3AAC  D0 21 00 1C */ stfs f1, 0x1c(r1)
/* 800B6B70 000B3AB0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B6B74 000B3AB4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6B78 000B3AB8  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800B6B7C 000B3ABC  38 80 00 02 */ li r4, 2
/* 800B6B80 000B3AC0  38 A0 00 01 */ li r5, 1
/* 800B6B84 000B3AC4  38 C1 00 14 */ addi r6, r1, 0x14
/* 800B6B88 000B3AC8  4B FB 8E 9D */ bl dVibration_c_NS_StartShock
/* 800B6B8C 000B3ACC  7F C3 F3 78 */ mr r3, r30
/* 800B6B90 000B3AD0  48 04 86 FD */ bl daAlink_c_NS_setClimbStartNotGround
/* 800B6B94 000B3AD4  48 00 03 74 */ b lbl_800B6F08
lbl_800B6B98:
/* 800B6B98 000B3AD8  28 03 00 04 */ cmplwi r3, 4
/* 800B6B9C 000B3ADC  40 82 03 68 */ bne lbl_800B6F04
/* 800B6BA0 000B3AE0  7F C3 F3 78 */ mr r3, r30
/* 800B6BA4 000B3AE4  48 04 63 B5 */ bl daAlink_c_NS_getLadderUnitCount
/* 800B6BA8 000B3AE8  38 83 FF FF */ addi r4, r3, -1
/* 800B6BAC 000B3AEC  2C 04 00 01 */ cmpwi r4, 1
/* 800B6BB0 000B3AF0  40 80 00 0C */ bge lbl_800B6BBC
/* 800B6BB4 000B3AF4  38 60 00 00 */ li r3, 0
/* 800B6BB8 000B3AF8  48 00 03 50 */ b lbl_800B6F08
lbl_800B6BBC:
/* 800B6BBC 000B3AFC  7F C3 F3 78 */ mr r3, r30
/* 800B6BC0 000B3B00  48 04 66 31 */ bl daAlink_c_NS_setLadderPos
/* 800B6BC4 000B3B04  7F C3 F3 78 */ mr r3, r30
/* 800B6BC8 000B3B08  38 80 00 01 */ li r4, 1
/* 800B6BCC 000B3B0C  38 A0 00 00 */ li r5, 0
/* 800B6BD0 000B3B10  48 00 A7 0D */ bl daAlink_c_NS_deleteEquipItem
/* 800B6BD4 000B3B14  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B6BD8 000B3B18  D0 21 00 08 */ stfs f1, 8(r1)
/* 800B6BDC 000B3B1C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B6BE0 000B3B20  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800B6BE4 000B3B24  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800B6BE8 000B3B28  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B6BEC 000B3B2C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6BF0 000B3B30  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800B6BF4 000B3B34  38 80 00 02 */ li r4, 2
/* 800B6BF8 000B3B38  38 A0 00 01 */ li r5, 1
/* 800B6BFC 000B3B3C  38 C1 00 08 */ addi r6, r1, 8
/* 800B6C00 000B3B40  4B FB 8E 25 */ bl dVibration_c_NS_StartShock
/* 800B6C04 000B3B44  C0 0D 81 18 */ lfs f0, lbl_80450698-_SDA_BASE_(r13)
/* 800B6C08 000B3B48  D0 1E 33 B0 */ stfs f0, 0x33b0(r30)
/* 800B6C0C 000B3B4C  C0 5E 04 D4 */ lfs f2, 0x4d4(r30)
/* 800B6C10 000B3B50  C0 3E 33 C0 */ lfs f1, 0x33c0(r30)
/* 800B6C14 000B3B54  C0 02 93 E0 */ lfs f0, lbl_80452DE0-_SDA2_BASE_(r2)
/* 800B6C18 000B3B58  EC 01 00 28 */ fsubs f0, f1, f0
/* 800B6C1C 000B3B5C  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800B6C20 000B3B60  40 81 00 18 */ ble lbl_800B6C38
/* 800B6C24 000B3B64  D0 1E 04 D4 */ stfs f0, 0x4d4(r30)
/* 800B6C28 000B3B68  7F C3 F3 78 */ mr r3, r30
/* 800B6C2C 000B3B6C  38 80 00 01 */ li r4, 1
/* 800B6C30 000B3B70  48 04 6B F5 */ bl daAlink_c_NS_procLadderUpEndInit
/* 800B6C34 000B3B74  48 00 00 20 */ b lbl_800B6C54
lbl_800B6C38:
/* 800B6C38 000B3B78  7F C3 F3 78 */ mr r3, r30
/* 800B6C3C 000B3B7C  38 80 00 01 */ li r4, 1
/* 800B6C40 000B3B80  38 A0 00 00 */ li r5, 0
/* 800B6C44 000B3B84  38 DE 04 D0 */ addi r6, r30, 0x4d0
/* 800B6C48 000B3B88  48 04 71 49 */ bl daAlink_c_NS_procLadderMoveInit
/* 800B6C4C 000B3B8C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B6C50 000B3B90  D0 1E 1F DC */ stfs f0, 0x1fdc(r30)
lbl_800B6C54:
/* 800B6C54 000B3B94  80 7E 20 60 */ lwz r3, 0x2060(r30)
/* 800B6C58 000B3B98  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800B6C5C 000B3B9C  38 80 00 00 */ li r4, 0
/* 800B6C60 000B3BA0  38 A0 00 23 */ li r5, 0x23
/* 800B6C64 000B3BA4  4B F5 8B E5 */ bl mDoExt_MtxCalcOldFrame_NS_initOldFrameMorf
/* 800B6C68 000B3BA8  38 60 00 01 */ li r3, 1
/* 800B6C6C 000B3BAC  48 00 02 9C */ b lbl_800B6F08
lbl_800B6C70:
/* 800B6C70 000B3BB0  80 1E 05 80 */ lwz r0, 0x580(r30)
/* 800B6C74 000B3BB4  54 00 07 39 */ rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800B6C78 000B3BB8  40 82 02 8C */ bne lbl_800B6F04
/* 800B6C7C 000B3BBC  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B6C80 000B3BC0  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6C84 000B3BC4  40 82 01 6C */ bne lbl_800B6DF0
/* 800B6C88 000B3BC8  80 1E 05 7C */ lwz r0, 0x57c(r30)
/* 800B6C8C 000B3BCC  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 800B6C90 000B3BD0  41 82 00 28 */ beq lbl_800B6CB8
/* 800B6C94 000B3BD4  A8 7E 30 6E */ lha r3, 0x306e(r30)
/* 800B6C98 000B3BD8  A8 1E 2F E2 */ lha r0, 0x2fe2(r30)
/* 800B6C9C 000B3BDC  7C 03 00 50 */ subf r0, r3, r0
/* 800B6CA0 000B3BE0  7C 03 07 34 */ extsh r3, r0
/* 800B6CA4 000B3BE4  48 2A E4 2D */ bl func_803650D0
/* 800B6CA8 000B3BE8  2C 03 78 00 */ cmpwi r3, 0x7800
/* 800B6CAC 000B3BEC  40 80 00 0C */ bge lbl_800B6CB8
/* 800B6CB0 000B3BF0  38 60 00 00 */ li r3, 0
/* 800B6CB4 000B3BF4  48 00 02 54 */ b lbl_800B6F08
lbl_800B6CB8:
/* 800B6CB8 000B3BF8  88 1E 2F 91 */ lbz r0, 0x2f91(r30)
/* 800B6CBC 000B3BFC  28 00 00 03 */ cmplwi r0, 3
/* 800B6CC0 000B3C00  40 82 00 10 */ bne lbl_800B6CD0
/* 800B6CC4 000B3C04  7F C3 F3 78 */ mr r3, r30
/* 800B6CC8 000B3C08  48 04 74 4D */ bl daAlink_c_NS_setClimbInit
/* 800B6CCC 000B3C0C  48 00 02 3C */ b lbl_800B6F08
lbl_800B6CD0:
/* 800B6CD0 000B3C10  28 00 00 04 */ cmplwi r0, 4
/* 800B6CD4 000B3C14  40 82 00 10 */ bne lbl_800B6CE4
/* 800B6CD8 000B3C18  7F C3 F3 78 */ mr r3, r30
/* 800B6CDC 000B3C1C  48 04 62 A9 */ bl daAlink_c_NS_setLadderInit
/* 800B6CE0 000B3C20  48 00 02 28 */ b lbl_800B6F08
lbl_800B6CE4:
/* 800B6CE4 000B3C24  28 00 00 05 */ cmplwi r0, 5
/* 800B6CE8 000B3C28  40 82 01 34 */ bne lbl_800B6E1C
/* 800B6CEC 000B3C2C  3B A0 00 00 */ li r29, 0
/* 800B6CF0 000B3C30  88 1E 04 E2 */ lbz r0, 0x4e2(r30)
/* 800B6CF4 000B3C34  2C 00 00 04 */ cmpwi r0, 4
/* 800B6CF8 000B3C38  40 82 00 30 */ bne lbl_800B6D28
/* 800B6CFC 000B3C3C  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 800B6D00 000B3C40  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 800B6D04 000B3C44  38 63 04 78 */ addi r3, r3, 0x478
/* 800B6D08 000B3C48  4B FE 6D 59 */ bl checkStageName__9daAlink_cFPCc
/* 800B6D0C 000B3C4C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B6D10 000B3C50  41 82 00 18 */ beq lbl_800B6D28
/*.global daAlink_searchTagKandelaar*/
/* 800B6D14 000B3C54  3C 60 80 11 */ lis r3, daAlink_searchTagKandelaar@ha
/*.global daAlink_searchTagKandelaar*/
/* 800B6D18 000B3C58  38 63 06 54 */ addi r3, r3, daAlink_searchTagKandelaar@l
/* 800B6D1C 000B3C5C  38 80 00 00 */ li r4, 0
/* 800B6D20 000B3C60  4B F6 2A D9 */ bl fopAcIt_Judge
/* 800B6D24 000B3C64  7C 7D 1B 78 */ mr r29, r3
lbl_800B6D28:
/* 800B6D28 000B3C68  28 1D 00 00 */ cmplwi r29, 0
/* 800B6D2C 000B3C6C  41 82 00 A0 */ beq lbl_800B6DCC
/* 800B6D30 000B3C70  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B6D34 000B3C74  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6D38 000B3C78  80 83 5D AC */ lwz r4, 0x5dac(r3)
/* 800B6D3C 000B3C7C  C0 24 04 D4 */ lfs f1, 0x4d4(r4)
/* 800B6D40 000B3C80  C0 1D 04 D4 */ lfs f0, 0x4d4(r29)
/* 800B6D44 000B3C84  EF E1 00 28 */ fsubs f31, f1, f0
/* 800B6D48 000B3C88  7F A3 EB 78 */ mr r3, r29
/* 800B6D4C 000B3C8C  4B F6 3C 19 */ bl fopAcM_searchActorDistanceXZ
/* 800B6D50 000B3C90  C0 1D 04 EC */ lfs f0, 0x4ec(r29)
/* 800B6D54 000B3C94  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B6D58 000B3C98  40 80 00 68 */ bge lbl_800B6DC0
/* 800B6D5C 000B3C9C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B6D60 000B3CA0  FC 00 F8 40 */ fcmpo cr0, f0, f31
/* 800B6D64 000B3CA4  4C 40 13 82 */ cror 2, 0, 2
/* 800B6D68 000B3CA8  40 82 00 58 */ bne lbl_800B6DC0
/* 800B6D6C 000B3CAC  C0 1D 04 F0 */ lfs f0, 0x4f0(r29)
/* 800B6D70 000B3CB0  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800B6D74 000B3CB4  40 80 00 4C */ bge lbl_800B6DC0
/* 800B6D78 000B3CB8  3B E0 00 00 */ li r31, 0
/* 800B6D7C 000B3CBC  38 60 00 48 */ li r3, 0x48
/* 800B6D80 000B3CC0  38 80 00 01 */ li r4, 1
/* 800B6D84 000B3CC4  4B F7 45 25 */ bl dComIfGp_checkItemGet__FUci
/* 800B6D88 000B3CC8  2C 03 00 00 */ cmpwi r3, 0
/* 800B6D8C 000B3CCC  41 82 00 1C */ beq lbl_800B6DA8
/* 800B6D90 000B3CD0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B6D94 000B3CD4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6D98 000B3CD8  A0 03 00 08 */ lhz r0, 8(r3)
/* 800B6D9C 000B3CDC  28 00 00 00 */ cmplwi r0, 0
/* 800B6DA0 000B3CE0  41 82 00 08 */ beq lbl_800B6DA8
/* 800B6DA4 000B3CE4  3B E0 00 01 */ li r31, 1
lbl_800B6DA8:
/* 800B6DA8 000B3CE8  57 E4 06 3E */ clrlwi r4, r31, 0x18
/* 800B6DAC 000B3CEC  20 64 00 01 */ subfic r3, r4, 1
/* 800B6DB0 000B3CF0  30 03 FF FF */ addic r0, r3, -1
/* 800B6DB4 000B3CF4  7C 00 19 10 */ subfe r0, r0, r3
/* 800B6DB8 000B3CF8  90 1D 05 F8 */ stw r0, 0x5f8(r29)
/* 800B6DBC 000B3CFC  48 00 00 08 */ b lbl_800B6DC4
lbl_800B6DC0:
/* 800B6DC0 000B3D00  38 80 00 01 */ li r4, 1
lbl_800B6DC4:
/* 800B6DC4 000B3D04  2C 04 00 00 */ cmpwi r4, 0
/* 800B6DC8 000B3D08  41 82 00 10 */ beq lbl_800B6DD8
lbl_800B6DCC:
/* 800B6DCC 000B3D0C  7F C3 F3 78 */ mr r3, r30
/* 800B6DD0 000B3D10  48 04 6B FD */ bl daAlink_c_NS_procLadderDownStartInit
/* 800B6DD4 000B3D14  48 00 01 34 */ b lbl_800B6F08
lbl_800B6DD8:
/* 800B6DD8 000B3D18  80 1E 05 7C */ lwz r0, 0x57c(r30)
/* 800B6DDC 000B3D1C  64 00 00 40 */ oris r0, r0, 0x40
/* 800B6DE0 000B3D20  90 1E 05 7C */ stw r0, 0x57c(r30)
/* 800B6DE4 000B3D24  7F C3 F3 78 */ mr r3, r30
/* 800B6DE8 000B3D28  48 00 C5 D1 */ bl daAlink_c_NS_procWaitInit
/* 800B6DEC 000B3D2C  48 00 01 1C */ b lbl_800B6F08
lbl_800B6DF0:
/* 800B6DF0 000B3D30  28 03 00 00 */ cmplwi r3, 0
/* 800B6DF4 000B3D34  40 82 00 28 */ bne lbl_800B6E1C
/* 800B6DF8 000B3D38  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 800B6DFC 000B3D3C  A8 1E 2F E2 */ lha r0, 0x2fe2(r30)
/* 800B6E00 000B3D40  7C 03 00 50 */ subf r0, r3, r0
/* 800B6E04 000B3D44  7C 03 07 34 */ extsh r3, r0
/* 800B6E08 000B3D48  4B FF C6 8D */ bl daAlink_c_NS_getDirectionFromAngle
/* 800B6E0C 000B3D4C  2C 03 00 00 */ cmpwi r3, 0
/* 800B6E10 000B3D50  41 82 00 0C */ beq lbl_800B6E1C
/* 800B6E14 000B3D54  38 60 00 00 */ li r3, 0
/* 800B6E18 000B3D58  48 00 00 F0 */ b lbl_800B6F08
lbl_800B6E1C:
/* 800B6E1C 000B3D5C  38 1F 00 01 */ addi r0, r31, 1
/* 800B6E20 000B3D60  B0 1E 30 78 */ sth r0, 0x3078(r30)
/* 800B6E24 000B3D64  88 BE 2F 91 */ lbz r5, 0x2f91(r30)
/* 800B6E28 000B3D68  28 05 00 06 */ cmplwi r5, 6
/* 800B6E2C 000B3D6C  40 82 00 3C */ bne lbl_800B6E68
/* 800B6E30 000B3D70  A8 9E 30 78 */ lha r4, 0x3078(r30)
/* 800B6E34 000B3D74  3C 60 80 39 */ lis r3, lbl_8038E1F4@ha
/* 800B6E38 000B3D78  A8 03 E1 F4 */ lha r0, lbl_8038E1F4@l(r3)
/* 800B6E3C 000B3D7C  7C 04 00 00 */ cmpw r4, r0
/* 800B6E40 000B3D80  40 81 00 C4 */ ble lbl_800B6F04
/* 800B6E44 000B3D84  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B6E48 000B3D88  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6E4C 000B3D8C  41 82 00 10 */ beq lbl_800B6E5C
/* 800B6E50 000B3D90  7F C3 F3 78 */ mr r3, r30
/* 800B6E54 000B3D94  48 07 85 C9 */ bl daAlink_c_NS_procWolfStepMoveInit
/* 800B6E58 000B3D98  48 00 00 B0 */ b lbl_800B6F08
lbl_800B6E5C:
/* 800B6E5C 000B3D9C  7F C3 F3 78 */ mr r3, r30
/* 800B6E60 000B3DA0  48 01 06 75 */ bl daAlink_c_NS_procStepMoveInit
/* 800B6E64 000B3DA4  48 00 00 A4 */ b lbl_800B6F08
lbl_800B6E68:
/* 800B6E68 000B3DA8  28 05 00 07 */ cmplwi r5, 7
/* 800B6E6C 000B3DAC  41 82 00 14 */ beq lbl_800B6E80
/* 800B6E70 000B3DB0  28 05 00 08 */ cmplwi r5, 8
/* 800B6E74 000B3DB4  41 82 00 0C */ beq lbl_800B6E80
/* 800B6E78 000B3DB8  28 05 00 09 */ cmplwi r5, 9
/* 800B6E7C 000B3DBC  40 82 00 80 */ bne lbl_800B6EFC
lbl_800B6E80:
/* 800B6E80 000B3DC0  A8 9E 30 78 */ lha r4, 0x3078(r30)
/* 800B6E84 000B3DC4  3C 60 80 39 */ lis r3, lbl_8038E1F4@ha
/* 800B6E88 000B3DC8  38 63 E1 F4 */ addi r3, r3, lbl_8038E1F4@l
/* 800B6E8C 000B3DCC  A8 03 00 02 */ lha r0, 2(r3)
/* 800B6E90 000B3DD0  7C 04 00 00 */ cmpw r4, r0
/* 800B6E94 000B3DD4  40 81 00 70 */ ble lbl_800B6F04
/* 800B6E98 000B3DD8  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B6E9C 000B3DDC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6EA0 000B3DE0  41 82 00 3C */ beq lbl_800B6EDC
/* 800B6EA4 000B3DE4  28 05 00 07 */ cmplwi r5, 7
/* 800B6EA8 000B3DE8  41 82 00 0C */ beq lbl_800B6EB4
/* 800B6EAC 000B3DEC  28 05 00 08 */ cmplwi r5, 8
/* 800B6EB0 000B3DF0  40 82 00 54 */ bne lbl_800B6F04
lbl_800B6EB4:
/* 800B6EB4 000B3DF4  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800B6EB8 000B3DF8  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B6EBC 000B3DFC  41 82 00 14 */ beq lbl_800B6ED0
/* 800B6EC0 000B3E00  7F C3 F3 78 */ mr r3, r30
/* 800B6EC4 000B3E04  38 80 00 07 */ li r4, 7
/* 800B6EC8 000B3E08  48 07 E8 29 */ bl daAlink_c_NS_procWolfHangWallCatchInit
/* 800B6ECC 000B3E0C  48 00 00 3C */ b lbl_800B6F08
lbl_800B6ED0:
/* 800B6ED0 000B3E10  7F C3 F3 78 */ mr r3, r30
/* 800B6ED4 000B3E14  48 07 E7 19 */ bl daAlink_c_NS_procWolfHangReadyInit
/* 800B6ED8 000B3E18  48 00 00 30 */ b lbl_800B6F08
lbl_800B6EDC:
/* 800B6EDC 000B3E1C  28 05 00 07 */ cmplwi r5, 7
/* 800B6EE0 000B3E20  40 82 00 10 */ bne lbl_800B6EF0
/* 800B6EE4 000B3E24  7F C3 F3 78 */ mr r3, r30
/* 800B6EE8 000B3E28  48 04 4F 1D */ bl daAlink_c_NS_procHangWallCatchInit
/* 800B6EEC 000B3E2C  48 00 00 1C */ b lbl_800B6F08
lbl_800B6EF0:
/* 800B6EF0 000B3E30  7F C3 F3 78 */ mr r3, r30
/* 800B6EF4 000B3E34  48 04 52 85 */ bl daAlink_c_NS_procHangReadyInit
/* 800B6EF8 000B3E38  48 00 00 10 */ b lbl_800B6F08
lbl_800B6EFC:
/* 800B6EFC 000B3E3C  38 00 00 00 */ li r0, 0
/* 800B6F00 000B3E40  B0 1E 30 78 */ sth r0, 0x3078(r30)
lbl_800B6F04:
/* 800B6F04 000B3E44  38 60 00 00 */ li r3, 0
lbl_800B6F08:
/* 800B6F08 000B3E48  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 800B6F0C 000B3E4C  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 800B6F10 000B3E50  39 61 00 50 */ addi r11, r1, 0x50
/* 800B6F14 000B3E54  48 2A B3 15 */ bl _restgpr_29
/* 800B6F18 000B3E58  80 01 00 64 */ lwz r0, 0x64(r1)
/* 800B6F1C 000B3E5C  7C 08 03 A6 */ mtlr r0
/* 800B6F20 000B3E60  38 21 00 60 */ addi r1, r1, 0x60
/* 800B6F24 000B3E64  4E 80 00 20 */ blr
