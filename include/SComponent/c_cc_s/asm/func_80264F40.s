/* 80264F40 00261E80  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 80264F44 00261E84  7C 08 02 A6 */ mflr r0
/* 80264F48 00261E88  90 01 00 34 */ stw r0, 0x34(r1)
/* 80264F4C 00261E8C  39 61 00 30 */ addi r11, r1, 0x30
/* 80264F50 00261E90  48 0F D2 7D */ bl _savegpr_25
/* 80264F54 00261E94  7C 7F 1B 78 */ mr r31, r3
/* 80264F58 00261E98  A0 03 28 02 */ lhz r0, 0x2802(r3)
/* 80264F5C 00261E9C  54 04 10 3A */ slwi r4, r0, 2
/* 80264F60 00261EA0  3B A4 04 00 */ addi r29, r4, 0x400
/* 80264F64 00261EA4  7F BF EA 14 */ add r29, r31, r29
/* 80264F68 00261EA8  4B FF FE 29 */ bl ClrAtHitInf__4cCcSFv
/* 80264F6C 00261EAC  7F E3 FB 78 */ mr r3, r31
/* 80264F70 00261EB0  4B FF FD 81 */ bl ClrTgHitInf__4cCcSFv
/* 80264F74 00261EB4  7F FC FB 78 */ mr r28, r31
/* 80264F78 00261EB8  3C 60 80 43 */ lis r3, lbl_80430CCC@ha
/* 80264F7C 00261EBC  3B C3 0C CC */ addi r30, r3, lbl_80430CCC@l
/* 80264F80 00261EC0  48 00 01 B0 */ b lbl_80265130
lbl_80264F84:
/* 80264F84 00261EC4  80 7C 00 00 */ lwz r3, 0(r28)
/* 80264F88 00261EC8  28 03 00 00 */ cmplwi r3, 0
/* 80264F8C 00261ECC  41 82 01 A0 */ beq lbl_8026512C
/* 80264F90 00261ED0  80 03 00 00 */ lwz r0, 0(r3)
/* 80264F94 00261ED4  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 80264F98 00261ED8  41 82 01 94 */ beq lbl_8026512C
/* 80264F9C 00261EDC  81 83 00 3C */ lwz r12, 0x3c(r3)
/* 80264FA0 00261EE0  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 80264FA4 00261EE4  7D 89 03 A6 */ mtctr r12
/* 80264FA8 00261EE8  4E 80 04 21 */ bctrl
/* 80264FAC 00261EEC  7C 7B 1B 78 */ mr r27, r3
/* 80264FB0 00261EF0  3B 5F 04 00 */ addi r26, r31, 0x400
/* 80264FB4 00261EF4  48 00 01 70 */ b lbl_80265124
lbl_80264FB8:
/* 80264FB8 00261EF8  80 7A 00 00 */ lwz r3, 0(r26)
/* 80264FBC 00261EFC  28 03 00 00 */ cmplwi r3, 0
/* 80264FC0 00261F00  41 82 01 60 */ beq lbl_80265120
/* 80264FC4 00261F04  80 03 00 18 */ lwz r0, 0x18(r3)
/* 80264FC8 00261F08  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 80264FCC 00261F0C  41 82 01 54 */ beq lbl_80265120
/* 80264FD0 00261F10  38 83 00 48 */ addi r4, r3, 0x48
/* 80264FD4 00261F14  80 7C 00 00 */ lwz r3, 0(r28)
/* 80264FD8 00261F18  38 63 00 48 */ addi r3, r3, 0x48
/* 80264FDC 00261F1C  4B FF E3 8D */ bl Chk__15cCcD_DivideInfoCFRC15cCcD_DivideInfo
/* 80264FE0 00261F20  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80264FE4 00261F24  41 82 01 3C */ beq lbl_80265120
/* 80264FE8 00261F28  7F E3 FB 78 */ mr r3, r31
/* 80264FEC 00261F2C  80 9C 00 00 */ lwz r4, 0(r28)
/* 80264FF0 00261F30  80 BA 00 00 */ lwz r5, 0(r26)
/* 80264FF4 00261F34  4B FF FE 39 */ bl ChkNoHitAtTg__4cCcSFP8cCcD_ObjP8cCcD_Obj
/* 80264FF8 00261F38  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80264FFC 00261F3C  40 82 01 24 */ bne lbl_80265120
/* 80265000 00261F40  80 7A 00 00 */ lwz r3, 0(r26)
/* 80265004 00261F44  81 83 00 3C */ lwz r12, 0x3c(r3)
/* 80265008 00261F48  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 8026500C 00261F4C  7D 89 03 A6 */ mtctr r12
/* 80265010 00261F50  4E 80 04 21 */ bctrl
/* 80265014 00261F54  7C 79 1B 78 */ mr r25, r3
/* 80265018 00261F58  88 0D 8B D8 */ lbz r0, lbl_80451158-_SDA_BASE_(r13)
/* 8026501C 00261F5C  7C 00 07 75 */ extsb. r0, r0
/* 80265020 00261F60  40 82 00 28 */ bne lbl_80265048
/* 80265024 00261F64  3C 60 80 43 */ lis r3, lbl_80430CCC@ha
/* 80265028 00261F68  38 63 0C CC */ addi r3, r3, lbl_80430CCC@l
/* 8026502C 00261F6C  3C 80 80 01 */ lis r4, cXyz_NS_dtor@ha
/* 80265030 00261F70  38 84 91 84 */ addi r4, r4, cXyz_NS_dtor@l
/* 80265034 00261F74  3C A0 80 43 */ lis r5, lbl_80430CC0@ha
/* 80265038 00261F78  38 A5 0C C0 */ addi r5, r5, lbl_80430CC0@l
/* 8026503C 00261F7C  48 0F CB E9 */ bl func_80361C24
/* 80265040 00261F80  38 00 00 01 */ li r0, 1
/* 80265044 00261F84  98 0D 8B D8 */ stb r0, lbl_80451158-_SDA_BASE_(r13)
lbl_80265048:
/* 80265048 00261F88  7F 63 DB 78 */ mr r3, r27
/* 8026504C 00261F8C  7F 24 CB 78 */ mr r4, r25
/* 80265050 00261F90  3C A0 80 43 */ lis r5, lbl_80430CCC@ha
/* 80265054 00261F94  38 A5 0C CC */ addi r5, r5, lbl_80430CCC@l
/* 80265058 00261F98  81 9B 00 1C */ lwz r12, 0x1c(r27)
/* 8026505C 00261F9C  81 8C 00 0C */ lwz r12, 0xc(r12)
/* 80265060 00261FA0  7D 89 03 A6 */ mtctr r12
/* 80265064 00261FA4  4E 80 04 21 */ bctrl
/* 80265068 00261FA8  38 C0 00 01 */ li r6, 1
/* 8026506C 00261FAC  80 9C 00 00 */ lwz r4, 0(r28)
/* 80265070 00261FB0  80 04 00 40 */ lwz r0, 0x40(r4)
/* 80265074 00261FB4  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80265078 00261FB8  40 82 00 18 */ bne lbl_80265090
/* 8026507C 00261FBC  80 BA 00 00 */ lwz r5, 0(r26)
/* 80265080 00261FC0  80 05 00 40 */ lwz r0, 0x40(r5)
/* 80265084 00261FC4  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80265088 00261FC8  40 82 00 08 */ bne lbl_80265090
/* 8026508C 00261FCC  38 C0 00 00 */ li r6, 0
lbl_80265090:
/* 80265090 00261FD0  54 C0 06 3F */ clrlwi. r0, r6, 0x18
/* 80265094 00261FD4  40 82 00 24 */ bne lbl_802650B8
/* 80265098 00261FD8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026509C 00261FDC  41 82 00 1C */ beq lbl_802650B8
/* 802650A0 00261FE0  7F E3 FB 78 */ mr r3, r31
/* 802650A4 00261FE4  80 BA 00 00 */ lwz r5, 0(r26)
/* 802650A8 00261FE8  3C C0 80 43 */ lis r6, lbl_80430CCC@ha
/* 802650AC 00261FEC  38 C6 0C CC */ addi r6, r6, lbl_80430CCC@l
/* 802650B0 00261FF0  48 00 03 19 */ bl SetAtTgCommonHitInf__4cCcSFP8cCcD_ObjP8cCcD_ObjP4cXyz
/* 802650B4 00261FF4  48 00 00 6C */ b lbl_80265120
lbl_802650B8:
/* 802650B8 00261FF8  54 C0 06 3F */ clrlwi. r0, r6, 0x18
/* 802650BC 00261FFC  41 82 00 64 */ beq lbl_80265120
/* 802650C0 00262000  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 802650C4 00262004  40 82 00 5C */ bne lbl_80265120
/* 802650C8 00262008  7C 83 23 78 */ mr r3, r4
/* 802650CC 0026200C  81 84 00 3C */ lwz r12, 0x3c(r4)
/* 802650D0 00262010  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 802650D4 00262014  7D 89 03 A6 */ mtctr r12
/* 802650D8 00262018  4E 80 04 21 */ bctrl
/* 802650DC 0026201C  28 03 00 00 */ cmplwi r3, 0
/* 802650E0 00262020  40 82 00 1C */ bne lbl_802650FC
/* 802650E4 00262024  C0 02 B6 38 */ lfs f0, lbl_80455038-_SDA2_BASE_(r2)
/* 802650E8 00262028  3C 60 80 43 */ lis r3, lbl_80430CCC@ha
/* 802650EC 0026202C  D0 03 0C CC */ stfs f0, lbl_80430CCC@l(r3)
/* 802650F0 00262030  D0 1E 00 04 */ stfs f0, 4(r30)
/* 802650F4 00262034  D0 1E 00 08 */ stfs f0, 8(r30)
/* 802650F8 00262038  48 00 00 10 */ b lbl_80265108
lbl_802650FC:
/* 802650FC 0026203C  3C 80 80 43 */ lis r4, lbl_80430CCC@ha
/* 80265100 00262040  38 84 0C CC */ addi r4, r4, lbl_80430CCC@l
/* 80265104 00262044  48 00 9D 21 */ bl CalcCenter__8cM3dGAabCFP4cXyz
lbl_80265108:
/* 80265108 00262048  7F E3 FB 78 */ mr r3, r31
/* 8026510C 0026204C  80 9C 00 00 */ lwz r4, 0(r28)
/* 80265110 00262050  80 BA 00 00 */ lwz r5, 0(r26)
/* 80265114 00262054  3C C0 80 43 */ lis r6, lbl_80430CCC@ha
/* 80265118 00262058  38 C6 0C CC */ addi r6, r6, lbl_80430CCC@l
/* 8026511C 0026205C  48 00 02 AD */ bl SetAtTgCommonHitInf__4cCcSFP8cCcD_ObjP8cCcD_ObjP4cXyz
lbl_80265120:
/* 80265120 00262060  3B 5A 00 04 */ addi r26, r26, 4
lbl_80265124:
/* 80265124 00262064  7C 1A E8 40 */ cmplw r26, r29
/* 80265128 00262068  41 80 FE 90 */ blt lbl_80264FB8
lbl_8026512C:
/* 8026512C 0026206C  3B 9C 00 04 */ addi r28, r28, 4
lbl_80265130:
/* 80265130 00262070  A0 1F 28 00 */ lhz r0, 0x2800(r31)
/* 80265134 00262074  54 00 10 3A */ slwi r0, r0, 2
/* 80265138 00262078  7C 1F 02 14 */ add r0, r31, r0
/* 8026513C 0026207C  7C 1C 00 40 */ cmplw r28, r0
/* 80265140 00262080  41 80 FE 44 */ blt lbl_80264F84
/* 80265144 00262084  39 61 00 30 */ addi r11, r1, 0x30
/* 80265148 00262088  48 0F D0 D1 */ bl _restgpr_25
/* 8026514C 0026208C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 80265150 00262090  7C 08 03 A6 */ mtlr r0
/* 80265154 00262094  38 21 00 30 */ addi r1, r1, 0x30
/* 80265158 00262098  4E 80 00 20 */ blr
