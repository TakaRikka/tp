/* 800B3924 000B0864  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 800B3928 000B0868  7C 08 02 A6 */ mflr r0
/* 800B392C 000B086C  90 01 00 64 */ stw r0, 0x64(r1)
/* 800B3930 000B0870  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 800B3934 000B0874  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 800B3938 000B0878  DB C1 00 40 */ stfd f30, 0x40(r1)
/* 800B393C 000B087C  F3 C1 00 48 */ psq_st f30, 72(r1), 0, 0
/* 800B3940 000B0880  DB A1 00 30 */ stfd f29, 0x30(r1)
/* 800B3944 000B0884  F3 A1 00 38 */ psq_st f29, 56(r1), 0, 0
/* 800B3948 000B0888  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 800B394C 000B088C  93 C1 00 28 */ stw r30, 0x28(r1)
/* 800B3950 000B0890  7C 7E 1B 78 */ mr r30, r3
/* 800B3954 000B0894  FF A0 08 90 */ fmr f29, f1
/* 800B3958 000B0898  FF C0 10 90 */ fmr f30, f2
/* 800B395C 000B089C  3C 60 80 39 */ lis r3, lbl_8038D658@ha
/* 800B3960 000B08A0  3B E3 D6 58 */ addi r31, r3, lbl_8038D658@l
/* 800B3964 000B08A4  38 00 00 00 */ li r0, 0
/* 800B3968 000B08A8  88 7E 05 6A */ lbz r3, 0x56a(r30)
/* 800B396C 000B08AC  28 03 00 00 */ cmplwi r3, 0
/* 800B3970 000B08B0  41 82 00 10 */ beq lbl_800B3980
/* 800B3974 000B08B4  28 03 00 26 */ cmplwi r3, 0x26
/* 800B3978 000B08B8  40 80 00 08 */ bge lbl_800B3980
/* 800B397C 000B08BC  38 00 00 01 */ li r0, 1
lbl_800B3980:
/* 800B3980 000B08C0  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 800B3984 000B08C4  41 82 00 18 */ beq lbl_800B399C
/* 800B3988 000B08C8  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800B398C 000B08CC  C0 1E 05 94 */ lfs f0, 0x594(r30)
/* 800B3990 000B08D0  EC 00 00 72 */ fmuls f0, f0, f1
/* 800B3994 000B08D4  EF E1 00 32 */ fmuls f31, f1, f0
/* 800B3998 000B08D8  48 00 00 14 */ b lbl_800B39AC
lbl_800B399C:
/* 800B399C 000B08DC  C0 3E 33 A8 */ lfs f1, 0x33a8(r30)
/* 800B39A0 000B08E0  C0 1E 05 94 */ lfs f0, 0x594(r30)
/* 800B39A4 000B08E4  EC 00 00 72 */ fmuls f0, f0, f1
/* 800B39A8 000B08E8  EF E1 00 32 */ fmuls f31, f1, f0
lbl_800B39AC:
/* 800B39AC 000B08EC  7F C3 F3 78 */ mr r3, r30
/* 800B39B0 000B08F0  38 80 00 39 */ li r4, 0x39
/* 800B39B4 000B08F4  48 07 4E 59 */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 800B39B8 000B08F8  2C 03 00 00 */ cmpwi r3, 0
/* 800B39BC 000B08FC  40 82 00 28 */ bne lbl_800B39E4
/* 800B39C0 000B0900  7F C3 F3 78 */ mr r3, r30
/* 800B39C4 000B0904  38 80 00 C6 */ li r4, 0xc6
/* 800B39C8 000B0908  4B FF 8B 91 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 800B39CC 000B090C  2C 03 00 00 */ cmpwi r3, 0
/* 800B39D0 000B0910  40 82 00 14 */ bne lbl_800B39E4
/* 800B39D4 000B0914  7F C3 F3 78 */ mr r3, r30
/* 800B39D8 000B0918  48 04 DF E1 */ bl daAlink_c_NS_getZoraSwim
/* 800B39DC 000B091C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B39E0 000B0920  41 82 00 08 */ beq lbl_800B39E8
lbl_800B39E4:
/* 800B39E4 000B0924  C3 FE 05 94 */ lfs f31, 0x594(r30)
lbl_800B39E8:
/* 800B39E8 000B0928  7F C3 F3 78 */ mr r3, r30
/* 800B39EC 000B092C  48 00 75 95 */ bl daAlink_c_NS_checkUpperReadyThrowAnime
/* 800B39F0 000B0930  2C 03 00 00 */ cmpwi r3, 0
/* 800B39F4 000B0934  41 82 00 1C */ beq lbl_800B3A10
/* 800B39F8 000B0938  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 800B39FC 000B093C  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B3A00 000B0940  41 82 00 10 */ beq lbl_800B3A10
/* 800B3A04 000B0944  88 1E 2F 8C */ lbz r0, 0x2f8c(r30)
/* 800B3A08 000B0948  28 00 00 01 */ cmplwi r0, 1
/* 800B3A0C 000B094C  41 82 00 98 */ beq lbl_800B3AA4
lbl_800B3A10:
/* 800B3A10 000B0950  48 00 C9 D9 */ bl daAlink_c_NS_checkRoomOnly
/* 800B3A14 000B0954  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B3A18 000B0958  40 82 00 58 */ bne lbl_800B3A70
/* 800B3A1C 000B095C  A0 1E 1F BC */ lhz r0, 0x1fbc(r30)
/* 800B3A20 000B0960  28 00 02 02 */ cmplwi r0, 0x202
/* 800B3A24 000B0964  41 82 00 4C */ beq lbl_800B3A70
/* 800B3A28 000B0968  7F C3 F3 78 */ mr r3, r30
/* 800B3A2C 000B096C  48 03 02 F1 */ bl daAlink_c_NS_checkGrabSlowMoveActor
/* 800B3A30 000B0970  2C 03 00 00 */ cmpwi r3, 0
/* 800B3A34 000B0974  40 82 00 3C */ bne lbl_800B3A70
/* 800B3A38 000B0978  7F C3 F3 78 */ mr r3, r30
/* 800B3A3C 000B097C  48 02 93 B5 */ bl daAlink_c_NS_checkUpperGuardAnime
/* 800B3A40 000B0980  2C 03 00 00 */ cmpwi r3, 0
/* 800B3A44 000B0984  41 82 00 10 */ beq lbl_800B3A54
/* 800B3A48 000B0988  88 1E 2F 8C */ lbz r0, 0x2f8c(r30)
/* 800B3A4C 000B098C  28 00 00 01 */ cmplwi r0, 1
/* 800B3A50 000B0990  41 82 00 20 */ beq lbl_800B3A70
lbl_800B3A54:
/* 800B3A54 000B0994  88 1E 2F BD */ lbz r0, 0x2fbd(r30)
/* 800B3A58 000B0998  28 00 00 04 */ cmplwi r0, 4
/* 800B3A5C 000B099C  40 82 00 64 */ bne lbl_800B3AC0
/* 800B3A60 000B09A0  C0 3E 2B A8 */ lfs f1, 0x2ba8(r30)
/* 800B3A64 000B09A4  C0 02 94 34 */ lfs f0, lbl_80452E34-_SDA2_BASE_(r2)
/* 800B3A68 000B09A8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B3A6C 000B09AC  40 80 00 54 */ bge lbl_800B3AC0
lbl_800B3A70:
/* 800B3A70 000B09B0  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 800B3A74 000B09B4  28 00 00 04 */ cmplwi r0, 4
/* 800B3A78 000B09B8  41 82 00 2C */ beq lbl_800B3AA4
/* 800B3A7C 000B09BC  28 00 00 05 */ cmplwi r0, 5
/* 800B3A80 000B09C0  41 82 00 24 */ beq lbl_800B3AA4
/* 800B3A84 000B09C4  28 00 00 07 */ cmplwi r0, 7
/* 800B3A88 000B09C8  41 82 00 1C */ beq lbl_800B3AA4
/* 800B3A8C 000B09CC  28 00 00 F2 */ cmplwi r0, 0xf2
/* 800B3A90 000B09D0  41 82 00 14 */ beq lbl_800B3AA4
/* 800B3A94 000B09D4  28 00 00 F6 */ cmplwi r0, 0xf6
/* 800B3A98 000B09D8  41 82 00 0C */ beq lbl_800B3AA4
/* 800B3A9C 000B09DC  28 00 00 09 */ cmplwi r0, 9
/* 800B3AA0 000B09E0  40 82 00 20 */ bne lbl_800B3AC0
lbl_800B3AA4:
/* 800B3AA4 000B09E4  C0 3E 05 94 */ lfs f1, 0x594(r30)
/* 800B3AA8 000B09E8  38 7F 00 0C */ addi r3, r31, 0xc
/* 800B3AAC 000B09EC  C0 03 00 44 */ lfs f0, 0x44(r3)
/* 800B3AB0 000B09F0  EC 01 00 32 */ fmuls f0, f1, f0
/* 800B3AB4 000B09F4  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800B3AB8 000B09F8  40 81 00 08 */ ble lbl_800B3AC0
/* 800B3ABC 000B09FC  FF E0 00 90 */ fmr f31, f0
lbl_800B3AC0:
/* 800B3AC0 000B0A00  88 1E 2F BD */ lbz r0, 0x2fbd(r30)
/* 800B3AC4 000B0A04  28 00 00 03 */ cmplwi r0, 3
/* 800B3AC8 000B0A08  40 82 00 2C */ bne lbl_800B3AF4
/* 800B3ACC 000B0A0C  C0 3E 2B A8 */ lfs f1, 0x2ba8(r30)
/* 800B3AD0 000B0A10  C0 02 94 34 */ lfs f0, lbl_80452E34-_SDA2_BASE_(r2)
/* 800B3AD4 000B0A14  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B3AD8 000B0A18  40 80 00 1C */ bge lbl_800B3AF4
/* 800B3ADC 000B0A1C  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800B3AE0 000B0A20  C0 1E 05 94 */ lfs f0, 0x594(r30)
/* 800B3AE4 000B0A24  EC 01 00 32 */ fmuls f0, f1, f0
/* 800B3AE8 000B0A28  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800B3AEC 000B0A2C  40 81 00 08 */ ble lbl_800B3AF4
/* 800B3AF0 000B0A30  FF E0 00 90 */ fmr f31, f0
lbl_800B3AF4:
/* 800B3AF4 000B0A34  80 1E 05 7C */ lwz r0, 0x57c(r30)
/* 800B3AF8 000B0A38  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B3AFC 000B0A3C  41 82 00 8C */ beq lbl_800B3B88
/* 800B3B00 000B0A40  C0 5E 33 B4 */ lfs f2, 0x33b4(r30)
/* 800B3B04 000B0A44  C0 22 92 E0 */ lfs f1, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800B3B08 000B0A48  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800B3B0C 000B0A4C  EC 01 00 2A */ fadds f0, f1, f0
/* 800B3B10 000B0A50  EC 42 00 28 */ fsubs f2, f2, f0
/* 800B3B14 000B0A54  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B3B18 000B0A58  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B3B1C 000B0A5C  41 82 00 10 */ beq lbl_800B3B2C
/* 800B3B20 000B0A60  38 7F 22 5C */ addi r3, r31, 0x225c
/* 800B3B24 000B0A64  C0 23 00 48 */ lfs f1, 0x48(r3)
/* 800B3B28 000B0A68  48 00 00 0C */ b lbl_800B3B34
lbl_800B3B2C:
/* 800B3B2C 000B0A6C  38 7F 16 D4 */ addi r3, r31, 0x16d4
/* 800B3B30 000B0A70  C0 23 00 60 */ lfs f1, 0x60(r3)
lbl_800B3B34:
/* 800B3B34 000B0A74  C0 02 92 E0 */ lfs f0, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800B3B38 000B0A78  EC 01 00 28 */ fsubs f0, f1, f0
/* 800B3B3C 000B0A7C  EC 02 00 24 */ fdivs f0, f2, f0
/* 800B3B40 000B0A80  C0 62 92 C0 */ lfs f3, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B3B44 000B0A84  FC 00 18 40 */ fcmpo cr0, f0, f3
/* 800B3B48 000B0A88  40 80 00 08 */ bge lbl_800B3B50
/* 800B3B4C 000B0A8C  48 00 00 18 */ b lbl_800B3B64
lbl_800B3B50:
/* 800B3B50 000B0A90  C0 62 92 B8 */ lfs f3, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B3B54 000B0A94  FC 00 18 40 */ fcmpo cr0, f0, f3
/* 800B3B58 000B0A98  40 81 00 08 */ ble lbl_800B3B60
/* 800B3B5C 000B0A9C  48 00 00 08 */ b lbl_800B3B64
lbl_800B3B60:
/* 800B3B60 000B0AA0  FC 60 00 90 */ fmr f3, f0
lbl_800B3B64:
/* 800B3B64 000B0AA4  C0 5E 05 94 */ lfs f2, 0x594(r30)
/* 800B3B68 000B0AA8  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B3B6C 000B0AAC  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 800B3B70 000B0AB0  EC 00 00 F2 */ fmuls f0, f0, f3
/* 800B3B74 000B0AB4  EC 01 00 28 */ fsubs f0, f1, f0
/* 800B3B78 000B0AB8  EC 02 00 32 */ fmuls f0, f2, f0
/* 800B3B7C 000B0ABC  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800B3B80 000B0AC0  40 81 00 08 */ ble lbl_800B3B88
/* 800B3B84 000B0AC4  FF E0 00 90 */ fmr f31, f0
lbl_800B3B88:
/* 800B3B88 000B0AC8  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800B3B8C 000B0ACC  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800B3B90 000B0AD0  90 01 00 18 */ stw r0, 0x18(r1)
/* 800B3B94 000B0AD4  80 7E 06 14 */ lwz r3, 0x614(r30)
/* 800B3B98 000B0AD8  28 03 00 0E */ cmplwi r3, 0xe
/* 800B3B9C 000B0ADC  40 82 00 10 */ bne lbl_800B3BAC
/* 800B3BA0 000B0AE0  80 1E 06 10 */ lwz r0, 0x610(r30)
/* 800B3BA4 000B0AE4  2C 00 00 00 */ cmpwi r0, 0
/* 800B3BA8 000B0AE8  41 82 00 20 */ beq lbl_800B3BC8
lbl_800B3BAC:
/* 800B3BAC 000B0AEC  28 03 00 41 */ cmplwi r3, 0x41
/* 800B3BB0 000B0AF0  41 82 00 18 */ beq lbl_800B3BC8
/* 800B3BB4 000B0AF4  7F C3 F3 78 */ mr r3, r30
/* 800B3BB8 000B0AF8  38 81 00 08 */ addi r4, r1, 8
/* 800B3BBC 000B0AFC  4B FF E4 1D */ bl daAlink_c_NS_getSlidePolygon
/* 800B3BC0 000B0B00  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B3BC4 000B0B04  41 82 00 14 */ beq lbl_800B3BD8
lbl_800B3BC8:
/* 800B3BC8 000B0B08  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800B3BCC 000B0B0C  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800B3BD0 000B0B10  90 01 00 18 */ stw r0, 0x18(r1)
/* 800B3BD4 000B0B14  48 00 03 28 */ b lbl_800B3EFC
lbl_800B3BD8:
/* 800B3BD8 000B0B18  A8 9E 30 FA */ lha r4, 0x30fa(r30)
/* 800B3BDC 000B0B1C  A8 7E 04 DE */ lha r3, 0x4de(r30)
/* 800B3BE0 000B0B20  3C 63 00 01 */ addis r3, r3, 1
/* 800B3BE4 000B0B24  38 03 80 00 */ addi r0, r3, -32768
/* 800B3BE8 000B0B28  7C 04 00 50 */ subf r0, r4, r0
/* 800B3BEC 000B0B2C  7C 1F 07 34 */ extsh r31, r0
/* 800B3BF0 000B0B30  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 800B3BF4 000B0B34  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B3BF8 000B0B38  40 82 00 4C */ bne lbl_800B3C44
/* 800B3BFC 000B0B3C  C0 1E 34 2C */ lfs f0, 0x342c(r30)
/* 800B3C00 000B0B40  FC 00 02 10 */ fabs f0, f0
/* 800B3C04 000B0B44  FC 00 00 18 */ frsp f0, f0
/* 800B3C08 000B0B48  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B3C0C 000B0B4C  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800B3C10 000B0B50  41 81 00 34 */ bgt lbl_800B3C44
/* 800B3C14 000B0B54  C0 1E 34 30 */ lfs f0, 0x3430(r30)
/* 800B3C18 000B0B58  FC 00 02 10 */ fabs f0, f0
/* 800B3C1C 000B0B5C  FC 00 00 18 */ frsp f0, f0
/* 800B3C20 000B0B60  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800B3C24 000B0B64  41 81 00 20 */ bgt lbl_800B3C44
/* 800B3C28 000B0B68  A0 1E 30 FC */ lhz r0, 0x30fc(r30)
/* 800B3C2C 000B0B6C  28 00 00 00 */ cmplwi r0, 0
/* 800B3C30 000B0B70  41 82 01 80 */ beq lbl_800B3DB0
/* 800B3C34 000B0B74  7F E3 FB 78 */ mr r3, r31
/* 800B3C38 000B0B78  48 2B 14 99 */ bl func_803650D0
/* 800B3C3C 000B0B7C  2C 03 40 00 */ cmpwi r3, 0x4000
/* 800B3C40 000B0B80  40 80 01 70 */ bge lbl_800B3DB0
lbl_800B3C44:
/* 800B3C44 000B0B84  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B3C48 000B0B88  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B3C4C 000B0B8C  40 82 01 64 */ bne lbl_800B3DB0
/* 800B3C50 000B0B90  7F C3 F3 78 */ mr r3, r30
/* 800B3C54 000B0B94  48 04 DD 65 */ bl daAlink_c_NS_getZoraSwim
/* 800B3C58 000B0B98  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B3C5C 000B0B9C  41 82 00 14 */ beq lbl_800B3C70
/* 800B3C60 000B0BA0  A8 7E 30 80 */ lha r3, 0x3080(r30)
/* 800B3C64 000B0BA4  48 2B 14 6D */ bl func_803650D0
/* 800B3C68 000B0BA8  2C 03 20 00 */ cmpwi r3, 0x2000
/* 800B3C6C 000B0BAC  41 81 01 44 */ bgt lbl_800B3DB0
lbl_800B3C70:
/* 800B3C70 000B0BB0  38 7E 18 B0 */ addi r3, r30, 0x18b0
/* 800B3C74 000B0BB4  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 800B3C78 000B0BB8  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B3C7C 000B0BBC  41 82 00 40 */ beq lbl_800B3CBC
/* 800B3C80 000B0BC0  38 00 00 03 */ li r0, 3
/* 800B3C84 000B0BC4  7C 09 03 A6 */ mtctr r0
lbl_800B3C88:
/* 800B3C88 000B0BC8  80 03 00 10 */ lwz r0, 0x10(r3)
/* 800B3C8C 000B0BCC  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B3C90 000B0BD0  41 82 00 20 */ beq lbl_800B3CB0
/* 800B3C94 000B0BD4  A8 83 00 3C */ lha r4, 0x3c(r3)
/* 800B3C98 000B0BD8  A8 7E 04 DE */ lha r3, 0x4de(r30)
/* 800B3C9C 000B0BDC  3C 63 00 01 */ addis r3, r3, 1
/* 800B3CA0 000B0BE0  38 03 80 00 */ addi r0, r3, -32768
/* 800B3CA4 000B0BE4  7C 04 00 50 */ subf r0, r4, r0
/* 800B3CA8 000B0BE8  7C 1F 07 34 */ extsh r31, r0
/* 800B3CAC 000B0BEC  48 00 00 C4 */ b lbl_800B3D70
lbl_800B3CB0:
/* 800B3CB0 000B0BF0  38 63 00 40 */ addi r3, r3, 0x40
/* 800B3CB4 000B0BF4  42 00 FF D4 */ bdnz lbl_800B3C88
/* 800B3CB8 000B0BF8  48 00 00 B8 */ b lbl_800B3D70
lbl_800B3CBC:
/* 800B3CBC 000B0BFC  C0 1E 34 2C */ lfs f0, 0x342c(r30)
/* 800B3CC0 000B0C00  FC 00 02 10 */ fabs f0, f0
/* 800B3CC4 000B0C04  FC 00 00 18 */ frsp f0, f0
/* 800B3CC8 000B0C08  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B3CCC 000B0C0C  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800B3CD0 000B0C10  41 81 00 18 */ bgt lbl_800B3CE8
/* 800B3CD4 000B0C14  C0 1E 34 30 */ lfs f0, 0x3430(r30)
/* 800B3CD8 000B0C18  FC 00 02 10 */ fabs f0, f0
/* 800B3CDC 000B0C1C  FC 00 00 18 */ frsp f0, f0
/* 800B3CE0 000B0C20  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800B3CE4 000B0C24  40 81 00 38 */ ble lbl_800B3D1C
lbl_800B3CE8:
/* 800B3CE8 000B0C28  38 00 00 03 */ li r0, 3
/* 800B3CEC 000B0C2C  B0 1E 30 FC */ sth r0, 0x30fc(r30)
/* 800B3CF0 000B0C30  C0 3E 34 2C */ lfs f1, 0x342c(r30)
/* 800B3CF4 000B0C34  C0 5E 34 30 */ lfs f2, 0x3430(r30)
/* 800B3CF8 000B0C38  48 1B 39 7D */ bl cM_atan2s__Fff
/* 800B3CFC 000B0C3C  B0 7E 30 FA */ sth r3, 0x30fa(r30)
/* 800B3D00 000B0C40  A8 9E 30 FA */ lha r4, 0x30fa(r30)
/* 800B3D04 000B0C44  A8 7E 04 DE */ lha r3, 0x4de(r30)
/* 800B3D08 000B0C48  3C 63 00 01 */ addis r3, r3, 1
/* 800B3D0C 000B0C4C  38 03 80 00 */ addi r0, r3, -32768
/* 800B3D10 000B0C50  7C 04 00 50 */ subf r0, r4, r0
/* 800B3D14 000B0C54  7C 1F 07 34 */ extsh r31, r0
/* 800B3D18 000B0C58  48 00 00 58 */ b lbl_800B3D70
lbl_800B3D1C:
/* 800B3D1C 000B0C5C  A0 1E 30 FC */ lhz r0, 0x30fc(r30)
/* 800B3D20 000B0C60  28 00 00 01 */ cmplwi r0, 1
/* 800B3D24 000B0C64  40 82 00 4C */ bne lbl_800B3D70
/* 800B3D28 000B0C68  80 1E 28 30 */ lwz r0, 0x2830(r30)
/* 800B3D2C 000B0C6C  28 00 00 00 */ cmplwi r0, 0
/* 800B3D30 000B0C70  41 82 00 40 */ beq lbl_800B3D70
/* 800B3D34 000B0C74  38 7E 04 D0 */ addi r3, r30, 0x4d0
/* 800B3D38 000B0C78  38 9E 35 40 */ addi r4, r30, 0x3540
/* 800B3D3C 000B0C7C  48 29 36 61 */ bl PSVECSquareDistance
/* 800B3D40 000B0C80  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B3D44 000B0C84  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B3D48 000B0C88  40 80 00 28 */ bge lbl_800B3D70
/* 800B3D4C 000B0C8C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B3D50 000B0C90  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B3D54 000B0C94  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800B3D58 000B0C98  38 9E 1E 4C */ addi r4, r30, 0x1e4c
/* 800B3D5C 000B0C9C  4B FC 09 05 */ bl cBgS_NS_ChkPolySafe
/* 800B3D60 000B0CA0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B3D64 000B0CA4  41 82 00 0C */ beq lbl_800B3D70
/* 800B3D68 000B0CA8  38 00 00 03 */ li r0, 3
/* 800B3D6C 000B0CAC  B0 1E 30 FC */ sth r0, 0x30fc(r30)
lbl_800B3D70:
/* 800B3D70 000B0CB0  7F E3 07 34 */ extsh r3, r31
/* 800B3D74 000B0CB4  48 2B 13 5D */ bl func_803650D0
/* 800B3D78 000B0CB8  2C 03 04 00 */ cmpwi r3, 0x400
/* 800B3D7C 000B0CBC  40 80 00 0C */ bge lbl_800B3D88
/* 800B3D80 000B0CC0  C3 E2 92 C0 */ lfs f31, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B3D84 000B0CC4  48 00 00 2C */ b lbl_800B3DB0
lbl_800B3D88:
/* 800B3D88 000B0CC8  2C 03 40 00 */ cmpwi r3, 0x4000
/* 800B3D8C 000B0CCC  40 80 00 24 */ bge lbl_800B3DB0
/* 800B3D90 000B0CD0  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B3D94 000B0CD4  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800B3D98 000B0CD8  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800B3D9C 000B0CDC  57 E0 04 38 */ rlwinm r0, r31, 0, 0x10, 0x1c
/* 800B3DA0 000B0CE0  7C 63 02 14 */ add r3, r3, r0
/* 800B3DA4 000B0CE4  C0 03 00 04 */ lfs f0, 4(r3)
/* 800B3DA8 000B0CE8  EC 01 00 28 */ fsubs f0, f1, f0
/* 800B3DAC 000B0CEC  EF FF 00 32 */ fmuls f31, f31, f0
lbl_800B3DB0:
/* 800B3DB0 000B0CF0  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B3DB4 000B0CF4  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 800B3DB8 000B0CF8  41 82 00 B8 */ beq lbl_800B3E70
/* 800B3DBC 000B0CFC  A8 9E 30 92 */ lha r4, 0x3092(r30)
/* 800B3DC0 000B0D00  A8 7E 04 DE */ lha r3, 0x4de(r30)
/* 800B3DC4 000B0D04  3C 63 00 01 */ addis r3, r3, 1
/* 800B3DC8 000B0D08  38 03 80 00 */ addi r0, r3, -32768
/* 800B3DCC 000B0D0C  7C 04 00 50 */ subf r0, r4, r0
/* 800B3DD0 000B0D10  7C 1F 07 34 */ extsh r31, r0
/* 800B3DD4 000B0D14  7F E3 FB 78 */ mr r3, r31
/* 800B3DD8 000B0D18  48 2B 12 F9 */ bl func_803650D0
/* 800B3DDC 000B0D1C  2C 03 40 00 */ cmpwi r3, 0x4000
/* 800B3DE0 000B0D20  40 80 00 90 */ bge lbl_800B3E70
/* 800B3DE4 000B0D24  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800B3DE8 000B0D28  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B3DEC 000B0D2C  41 82 00 30 */ beq lbl_800B3E1C
/* 800B3DF0 000B0D30  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B3DF4 000B0D34  C0 22 94 08 */ lfs f1, lbl_80452E08-_SDA2_BASE_(r2)
/* 800B3DF8 000B0D38  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800B3DFC 000B0D3C  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800B3E00 000B0D40  57 E0 04 38 */ rlwinm r0, r31, 0, 0x10, 0x1c
/* 800B3E04 000B0D44  7C 63 02 14 */ add r3, r3, r0
/* 800B3E08 000B0D48  C0 03 00 04 */ lfs f0, 4(r3)
/* 800B3E0C 000B0D4C  EC 01 00 32 */ fmuls f0, f1, f0
/* 800B3E10 000B0D50  EC 02 00 28 */ fsubs f0, f2, f0
/* 800B3E14 000B0D54  EF FF 00 32 */ fmuls f31, f31, f0
/* 800B3E18 000B0D58  48 00 00 34 */ b lbl_800B3E4C
lbl_800B3E1C:
/* 800B3E1C 000B0D5C  2C 03 06 00 */ cmpwi r3, 0x600
/* 800B3E20 000B0D60  40 80 00 0C */ bge lbl_800B3E2C
/* 800B3E24 000B0D64  C3 E2 92 C0 */ lfs f31, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B3E28 000B0D68  48 00 00 24 */ b lbl_800B3E4C
lbl_800B3E2C:
/* 800B3E2C 000B0D6C  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B3E30 000B0D70  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800B3E34 000B0D74  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800B3E38 000B0D78  57 E0 04 38 */ rlwinm r0, r31, 0, 0x10, 0x1c
/* 800B3E3C 000B0D7C  7C 63 02 14 */ add r3, r3, r0
/* 800B3E40 000B0D80  C0 03 00 04 */ lfs f0, 4(r3)
/* 800B3E44 000B0D84  EC 01 00 28 */ fsubs f0, f1, f0
/* 800B3E48 000B0D88  EF FF 00 32 */ fmuls f31, f31, f0
lbl_800B3E4C:
/* 800B3E4C 000B0D8C  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B3E50 000B0D90  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B3E54 000B0D94  40 82 00 1C */ bne lbl_800B3E70
/* 800B3E58 000B0D98  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B3E5C 000B0D9C  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B3E60 000B0DA0  40 82 00 10 */ bne lbl_800B3E70
/* 800B3E64 000B0DA4  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B3E68 000B0DA8  54 00 00 C2 */ rlwinm r0, r0, 0, 3, 1
/* 800B3E6C 000B0DAC  90 1E 05 74 */ stw r0, 0x574(r30)
lbl_800B3E70:
/* 800B3E70 000B0DB0  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 800B3E74 000B0DB4  FC 1F 08 40 */ fcmpo cr0, f31, f1
/* 800B3E78 000B0DB8  41 80 00 10 */ blt lbl_800B3E88
/* 800B3E7C 000B0DBC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B3E80 000B0DC0  FC 00 F8 00 */ fcmpu cr0, f0, f31
/* 800B3E84 000B0DC4  40 82 00 28 */ bne lbl_800B3EAC
lbl_800B3E88:
/* 800B3E88 000B0DC8  EC 01 F8 28 */ fsubs f0, f1, f31
/* 800B3E8C 000B0DCC  FC 00 F0 40 */ fcmpo cr0, f0, f30
/* 800B3E90 000B0DD0  40 81 00 0C */ ble lbl_800B3E9C
/* 800B3E94 000B0DD4  FC 40 F0 90 */ fmr f2, f30
/* 800B3E98 000B0DD8  48 00 00 08 */ b lbl_800B3EA0
lbl_800B3E9C:
/* 800B3E9C 000B0DDC  FC 40 00 90 */ fmr f2, f0
lbl_800B3EA0:
/* 800B3EA0 000B0DE0  C3 A2 92 C0 */ lfs f29, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B3EA4 000B0DE4  FC 20 F8 90 */ fmr f1, f31
/* 800B3EA8 000B0DE8  48 00 00 0C */ b lbl_800B3EB4
lbl_800B3EAC:
/* 800B3EAC 000B0DEC  FC 40 F0 90 */ fmr f2, f30
/* 800B3EB0 000B0DF0  FC 20 00 90 */ fmr f1, f0
lbl_800B3EB4:
/* 800B3EB4 000B0DF4  FC 00 EA 10 */ fabs f0, f29
/* 800B3EB8 000B0DF8  FC 60 00 18 */ frsp f3, f0
/* 800B3EBC 000B0DFC  C0 0D 8C 00 */ lfs f0, lbl_80451180-_SDA_BASE_(r13)
/* 800B3EC0 000B0E00  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800B3EC4 000B0E04  41 80 00 24 */ blt lbl_800B3EE8
/* 800B3EC8 000B0E08  C0 1E 33 98 */ lfs f0, 0x3398(r30)
/* 800B3ECC 000B0E0C  EC 00 E8 2A */ fadds f0, f0, f29
/* 800B3ED0 000B0E10  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800B3ED4 000B0E14  C0 1E 33 98 */ lfs f0, 0x3398(r30)
/* 800B3ED8 000B0E18  FC 00 F8 40 */ fcmpo cr0, f0, f31
/* 800B3EDC 000B0E1C  40 81 00 14 */ ble lbl_800B3EF0
/* 800B3EE0 000B0E20  D3 FE 33 98 */ stfs f31, 0x3398(r30)
/* 800B3EE4 000B0E24  48 00 00 0C */ b lbl_800B3EF0
lbl_800B3EE8:
/* 800B3EE8 000B0E28  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800B3EEC 000B0E2C  48 1B C8 55 */ bl cLib_chaseF__FPfff
lbl_800B3EF0:
/* 800B3EF0 000B0E30  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800B3EF4 000B0E34  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800B3EF8 000B0E38  90 01 00 18 */ stw r0, 0x18(r1)
lbl_800B3EFC:
/* 800B3EFC 000B0E3C  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 800B3F00 000B0E40  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 800B3F04 000B0E44  E3 C1 00 48 */ psq_l f30, 72(r1), 0, 0
/* 800B3F08 000B0E48  CB C1 00 40 */ lfd f30, 0x40(r1)
/* 800B3F0C 000B0E4C  E3 A1 00 38 */ psq_l f29, 56(r1), 0, 0
/* 800B3F10 000B0E50  CB A1 00 30 */ lfd f29, 0x30(r1)
/* 800B3F14 000B0E54  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 800B3F18 000B0E58  83 C1 00 28 */ lwz r30, 0x28(r1)
/* 800B3F1C 000B0E5C  80 01 00 64 */ lwz r0, 0x64(r1)
/* 800B3F20 000B0E60  7C 08 03 A6 */ mtlr r0
/* 800B3F24 000B0E64  38 21 00 60 */ addi r1, r1, 0x60
/* 800B3F28 000B0E68  4E 80 00 20 */ blr
