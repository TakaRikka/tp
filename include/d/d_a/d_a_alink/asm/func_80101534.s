/* 80101534 000FE474  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80101538 000FE478  7C 08 02 A6 */ mflr r0
/* 8010153C 000FE47C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80101540 000FE480  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80101544 000FE484  93 C1 00 08 */ stw r30, 8(r1)
/* 80101548 000FE488  7C 7E 1B 78 */ mr r30, r3
/* 8010154C 000FE48C  4B FF F2 25 */ bl daAlink_c_NS_commonRoofHangProc
/* 80101550 000FE490  2C 03 00 00 */ cmpwi r3, 0
/* 80101554 000FE494  41 82 00 0C */ beq lbl_80101560
/* 80101558 000FE498  38 60 00 01 */ li r3, 1
/* 8010155C 000FE49C  48 00 00 C8 */ b lbl_80101624
lbl_80101560:
/* 80101560 000FE4A0  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 80101564 000FE4A4  7F E3 FB 78 */ mr r3, r31
/* 80101568 000FE4A8  48 05 CF 65 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 8010156C 000FE4AC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80101570 000FE4B0  41 82 00 60 */ beq lbl_801015D0
/* 80101574 000FE4B4  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 80101578 000FE4B8  2C 00 00 00 */ cmpwi r0, 0
/* 8010157C 000FE4BC  40 82 00 48 */ bne lbl_801015C4
/* 80101580 000FE4C0  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 80101584 000FE4C4  3C 63 00 01 */ addis r3, r3, 1
/* 80101588 000FE4C8  38 03 80 00 */ addi r0, r3, -32768
/* 8010158C 000FE4CC  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
/* 80101590 000FE4D0  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 80101594 000FE4D4  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 80101598 000FE4D8  7F C3 F3 78 */ mr r3, r30
/* 8010159C 000FE4DC  38 80 00 00 */ li r4, 0
/* 801015A0 000FE4E0  38 A0 80 00 */ li r5, -32768
/* 801015A4 000FE4E4  38 C0 00 00 */ li r6, 0
/* 801015A8 000FE4E8  4B FA C5 D1 */ bl daAlink_c_NS_setOldRootQuaternion
/* 801015AC 000FE4EC  80 7E 20 60 */ lwz r3, 0x2060(r30)
/* 801015B0 000FE4F0  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 801015B4 000FE4F4  C0 23 00 1C */ lfs f1, 0x1c(r3)
/* 801015B8 000FE4F8  C0 02 95 BC */ lfs f0, lbl_80452FBC-_SDA2_BASE_(r2)
/* 801015BC 000FE4FC  EC 01 00 2A */ fadds f0, f1, f0
/* 801015C0 000FE500  D0 03 00 1C */ stfs f0, 0x1c(r3)
lbl_801015C4:
/* 801015C4 000FE504  7F C3 F3 78 */ mr r3, r30
/* 801015C8 000FE508  4B FF F3 25 */ bl daAlink_c_NS_checkNextActionRoofHang
/* 801015CC 000FE50C  48 00 00 54 */ b lbl_80101620
lbl_801015D0:
/* 801015D0 000FE510  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 801015D4 000FE514  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 801015D8 000FE518  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801015DC 000FE51C  4C 41 13 82 */ cror 2, 1, 2
/* 801015E0 000FE520  40 82 00 34 */ bne lbl_80101614
/* 801015E4 000FE524  C0 1E 34 7C */ lfs f0, 0x347c(r30)
/* 801015E8 000FE528  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801015EC 000FE52C  4C 40 13 82 */ cror 2, 0, 2
/* 801015F0 000FE530  40 82 00 24 */ bne lbl_80101614
/* 801015F4 000FE534  38 7E 04 E6 */ addi r3, r30, 0x4e6
/* 801015F8 000FE538  A8 9E 30 0C */ lha r4, 0x300c(r30)
/* 801015FC 000FE53C  38 A0 00 03 */ li r5, 3
/* 80101600 000FE540  38 C0 02 00 */ li r6, 0x200
/* 80101604 000FE544  38 E0 01 00 */ li r7, 0x100
/* 80101608 000FE548  48 16 EF 39 */ bl cLib_addCalcAngleS__FPsssss
/* 8010160C 000FE54C  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 80101610 000FE550  B0 1E 04 DE */ sth r0, 0x4de(r30)
lbl_80101614:
/* 80101614 000FE554  7F C3 F3 78 */ mr r3, r30
/* 80101618 000FE558  38 9E 1E 2C */ addi r4, r30, 0x1e2c
/* 8010161C 000FE55C  4B FF EF F9 */ bl daAlink_c_NS_setRoofHangHandOnSE
lbl_80101620:
/* 80101620 000FE560  38 60 00 01 */ li r3, 1
lbl_80101624:
/* 80101624 000FE564  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80101628 000FE568  83 C1 00 08 */ lwz r30, 8(r1)
/* 8010162C 000FE56C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80101630 000FE570  7C 08 03 A6 */ mtlr r0
/* 80101634 000FE574  38 21 00 10 */ addi r1, r1, 0x10
/* 80101638 000FE578  4E 80 00 20 */ blr
