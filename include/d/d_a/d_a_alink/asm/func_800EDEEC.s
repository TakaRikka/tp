/* 800EDEEC 000EAE2C  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800EDEF0 000EAE30  7C 08 02 A6 */ mflr r0
/* 800EDEF4 000EAE34  90 01 00 54 */ stw r0, 0x54(r1)
/* 800EDEF8 000EAE38  DB E1 00 40 */ stfd f31, 0x40(r1)
/* 800EDEFC 000EAE3C  F3 E1 00 48 */ psq_st f31, 72(r1), 0, 0
/* 800EDF00 000EAE40  DB C1 00 30 */ stfd f30, 0x30(r1)
/* 800EDF04 000EAE44  F3 C1 00 38 */ psq_st f30, 56(r1), 0, 0
/* 800EDF08 000EAE48  39 61 00 30 */ addi r11, r1, 0x30
/* 800EDF0C 000EAE4C  48 27 42 CD */ bl _savegpr_28
/* 800EDF10 000EAE50  7C 7D 1B 78 */ mr r29, r3
/* 800EDF14 000EAE54  7C 9E 23 78 */ mr r30, r4
/* 800EDF18 000EAE58  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 800EDF1C 000EAE5C  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 800EDF20 000EAE60  83 E4 5D B8 */ lwz r31, 0x5db8(r4)
/* 800EDF24 000EAE64  80 03 31 A0 */ lwz r0, 0x31a0(r3)
/* 800EDF28 000EAE68  54 1C 07 FE */ clrlwi r28, r0, 0x1f
/* 800EDF2C 000EAE6C  4B FF F5 B1 */ bl daAlink_c_NS_setSyncHorsePos
/* 800EDF30 000EAE70  7F A3 EB 78 */ mr r3, r29
/* 800EDF34 000EAE74  4B FF FE 39 */ bl daAlink_c_NS_checkHorseSpecialProc
/* 800EDF38 000EAE78  2C 03 00 00 */ cmpwi r3, 0
/* 800EDF3C 000EAE7C  41 82 00 0C */ beq lbl_800EDF48
/* 800EDF40 000EAE80  38 60 00 00 */ li r3, 0
/* 800EDF44 000EAE84  48 00 06 E0 */ b lbl_800EE624
lbl_800EDF48:
/* 800EDF48 000EAE88  7F A3 EB 78 */ mr r3, r29
/* 800EDF4C 000EAE8C  38 81 00 08 */ addi r4, r1, 8
/* 800EDF50 000EAE90  4B FF FB F9 */ bl daAlink_c_NS_getBaseHorseAnime
/* 800EDF54 000EAE94  C0 1F 05 2C */ lfs f0, 0x52c(r31)
/* 800EDF58 000EAE98  FC 00 02 10 */ fabs f0, f0
/* 800EDF5C 000EAE9C  FC 20 00 18 */ frsp f1, f0
/* 800EDF60 000EAEA0  C0 02 93 E4 */ lfs f0, lbl_80452DE4-_SDA2_BASE_(r2)
/* 800EDF64 000EAEA4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EDF68 000EAEA8  40 80 00 AC */ bge lbl_800EE014
/* 800EDF6C 000EAEAC  2C 1C 00 00 */ cmpwi r28, 0
/* 800EDF70 000EAEB0  40 82 00 10 */ bne lbl_800EDF80
/* 800EDF74 000EAEB4  38 00 00 00 */ li r0, 0
/* 800EDF78 000EAEB8  B0 1D 30 04 */ sth r0, 0x3004(r29)
/* 800EDF7C 000EAEBC  48 00 00 98 */ b lbl_800EE014
lbl_800EDF80:
/* 800EDF80 000EAEC0  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 800EDF84 000EAEC4  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800EDF88 000EAEC8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EDF8C 000EAECC  40 81 00 88 */ ble lbl_800EE014
/* 800EDF90 000EAED0  88 1F 16 B4 */ lbz r0, 0x16b4(r31)
/* 800EDF94 000EAED4  28 00 00 00 */ cmplwi r0, 0
/* 800EDF98 000EAED8  40 82 00 7C */ bne lbl_800EE014
/* 800EDF9C 000EAEDC  A0 1D 2F E8 */ lhz r0, 0x2fe8(r29)
/* 800EDFA0 000EAEE0  28 00 00 40 */ cmplwi r0, 0x40
/* 800EDFA4 000EAEE4  41 82 00 70 */ beq lbl_800EE014
/* 800EDFA8 000EAEE8  28 00 00 43 */ cmplwi r0, 0x43
/* 800EDFAC 000EAEEC  41 82 00 68 */ beq lbl_800EE014
/* 800EDFB0 000EAEF0  80 01 00 08 */ lwz r0, 8(r1)
/* 800EDFB4 000EAEF4  2C 00 00 5A */ cmpwi r0, 0x5a
/* 800EDFB8 000EAEF8  41 82 00 5C */ beq lbl_800EE014
/* 800EDFBC 000EAEFC  2C 00 00 5B */ cmpwi r0, 0x5b
/* 800EDFC0 000EAF00  41 82 00 54 */ beq lbl_800EE014
/* 800EDFC4 000EAF04  A8 1D 30 04 */ lha r0, 0x3004(r29)
/* 800EDFC8 000EAF08  2C 00 00 00 */ cmpwi r0, 0
/* 800EDFCC 000EAF0C  40 82 00 48 */ bne lbl_800EE014
/* 800EDFD0 000EAF10  A8 7D 04 E6 */ lha r3, 0x4e6(r29)
/* 800EDFD4 000EAF14  A8 1D 2F E2 */ lha r0, 0x2fe2(r29)
/* 800EDFD8 000EAF18  7C 03 00 50 */ subf r0, r3, r0
/* 800EDFDC 000EAF1C  7C 03 07 34 */ extsh r3, r0
/* 800EDFE0 000EAF20  4B FC 54 B5 */ bl daAlink_c_NS_getDirectionFromAngle
/* 800EDFE4 000EAF24  2C 03 00 00 */ cmpwi r3, 0
/* 800EDFE8 000EAF28  40 82 00 2C */ bne lbl_800EE014
/* 800EDFEC 000EAF2C  3C 60 80 39 */ lis r3, lbl_8038E5A4@ha
/* 800EDFF0 000EAF30  38 A3 E5 A4 */ addi r5, r3, lbl_8038E5A4@l
/* 800EDFF4 000EAF34  A8 05 00 54 */ lha r0, 0x54(r5)
/* 800EDFF8 000EAF38  B0 1D 30 04 */ sth r0, 0x3004(r29)
/* 800EDFFC 000EAF3C  7F A3 EB 78 */ mr r3, r29
/* 800EE000 000EAF40  38 80 00 4D */ li r4, 0x4d
/* 800EE004 000EAF44  4B FB F0 F1 */ bl daAlink_c_NS_setSingleAnimeParam
/* 800EE008 000EAF48  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800EE00C 000EAF4C  54 00 05 24 */ rlwinm r0, r0, 0, 0x14, 0x12
/* 800EE010 000EAF50  90 1D 05 74 */ stw r0, 0x574(r29)
lbl_800EE014:
/* 800EE014 000EAF54  A0 1D 1F 80 */ lhz r0, 0x1f80(r29)
/* 800EE018 000EAF58  28 00 00 DD */ cmplwi r0, 0xdd
/* 800EE01C 000EAF5C  41 82 00 10 */ beq lbl_800EE02C
/* 800EE020 000EAF60  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800EE024 000EAF64  28 00 01 B3 */ cmplwi r0, 0x1b3
/* 800EE028 000EAF68  40 82 00 24 */ bne lbl_800EE04C
lbl_800EE02C:
/* 800EE02C 000EAF6C  38 7D 20 00 */ addi r3, r29, 0x2000
/* 800EE030 000EAF70  48 07 04 9D */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800EE034 000EAF74  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EE038 000EAF78  41 82 00 14 */ beq lbl_800EE04C
/* 800EE03C 000EAF7C  7F A3 EB 78 */ mr r3, r29
/* 800EE040 000EAF80  38 80 00 02 */ li r4, 2
/* 800EE044 000EAF84  C0 22 93 24 */ lfs f1, lbl_80452D24-_SDA2_BASE_(r2)
/* 800EE048 000EAF88  4B FB FA A5 */ bl daAlink_c_NS_resetUnderAnime
lbl_800EE04C:
/* 800EE04C 000EAF8C  7F A3 EB 78 */ mr r3, r29
/* 800EE050 000EAF90  38 80 00 4D */ li r4, 0x4d
/* 800EE054 000EAF94  4B FB E5 05 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 800EE058 000EAF98  2C 03 00 00 */ cmpwi r3, 0
/* 800EE05C 000EAF9C  41 82 00 40 */ beq lbl_800EE09C
/* 800EE060 000EAFA0  7F A3 EB 78 */ mr r3, r29
/* 800EE064 000EAFA4  4B FC 46 01 */ bl daAlink_c_NS_spActionButton
/* 800EE068 000EAFA8  2C 03 00 00 */ cmpwi r3, 0
/* 800EE06C 000EAFAC  41 82 00 30 */ beq lbl_800EE09C
/* 800EE070 000EAFB0  7F A3 EB 78 */ mr r3, r29
/* 800EE074 000EAFB4  4B FC B1 E1 */ bl daAlink_c_NS_checkNoUpperAnime
/* 800EE078 000EAFB8  2C 03 00 00 */ cmpwi r3, 0
/* 800EE07C 000EAFBC  41 82 00 3C */ beq lbl_800EE0B8
/* 800EE080 000EAFC0  7F A3 EB 78 */ mr r3, r29
/* 800EE084 000EAFC4  38 80 00 55 */ li r4, 0x55
/* 800EE088 000EAFC8  4B FB E3 C9 */ bl daAlink_c_NS_getMainBckData
/* 800EE08C 000EAFCC  A0 83 00 02 */ lhz r4, 2(r3)
/* 800EE090 000EAFD0  7F A3 EB 78 */ mr r3, r29
/* 800EE094 000EAFD4  4B FB F2 AD */ bl daAlink_c_NS_setUpperAnimeBase
/* 800EE098 000EAFD8  48 00 00 20 */ b lbl_800EE0B8
lbl_800EE09C:
/* 800EE09C 000EAFDC  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 800EE0A0 000EAFE0  28 00 02 65 */ cmplwi r0, 0x265
/* 800EE0A4 000EAFE4  40 82 00 14 */ bne lbl_800EE0B8
/* 800EE0A8 000EAFE8  7F A3 EB 78 */ mr r3, r29
/* 800EE0AC 000EAFEC  38 80 00 02 */ li r4, 2
/* 800EE0B0 000EAFF0  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800EE0B4 000EAFF4  4B FB F6 71 */ bl daAlink_c_NS_resetUpperAnime
lbl_800EE0B8:
/* 800EE0B8 000EAFF8  2C 1E 00 00 */ cmpwi r30, 0
/* 800EE0BC 000EAFFC  41 82 02 08 */ beq lbl_800EE2C4
/* 800EE0C0 000EB000  A8 1D 30 A6 */ lha r0, 0x30a6(r29)
/* 800EE0C4 000EB004  2C 00 00 00 */ cmpwi r0, 0
/* 800EE0C8 000EB008  40 82 01 FC */ bne lbl_800EE2C4
/* 800EE0CC 000EB00C  C0 3F 05 2C */ lfs f1, 0x52c(r31)
/* 800EE0D0 000EB010  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EE0D4 000EB014  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE0D8 000EB018  4C 41 13 82 */ cror 2, 1, 2
/* 800EE0DC 000EB01C  40 82 01 E8 */ bne lbl_800EE2C4
/* 800EE0E0 000EB020  A8 1F 16 F2 */ lha r0, 0x16f2(r31)
/* 800EE0E4 000EB024  7C 00 07 35 */ extsh. r0, r0
/* 800EE0E8 000EB028  40 82 01 DC */ bne lbl_800EE2C4
/* 800EE0EC 000EB02C  80 01 00 08 */ lwz r0, 8(r1)
/* 800EE0F0 000EB030  2C 00 00 5A */ cmpwi r0, 0x5a
/* 800EE0F4 000EB034  41 82 01 D0 */ beq lbl_800EE2C4
/* 800EE0F8 000EB038  2C 00 00 5B */ cmpwi r0, 0x5b
/* 800EE0FC 000EB03C  41 82 01 C8 */ beq lbl_800EE2C4
/* 800EE100 000EB040  88 1D 2F 8C */ lbz r0, 0x2f8c(r29)
/* 800EE104 000EB044  28 00 00 0A */ cmplwi r0, 0xa
/* 800EE108 000EB048  40 82 00 34 */ bne lbl_800EE13C
/* 800EE10C 000EB04C  7F A3 EB 78 */ mr r3, r29
/* 800EE110 000EB050  4B FF EF 65 */ bl daAlink_c_NS_checkHorseNoUpperAnime
/* 800EE114 000EB054  2C 03 00 00 */ cmpwi r3, 0
/* 800EE118 000EB058  40 82 00 40 */ bne lbl_800EE158
/* 800EE11C 000EB05C  7F A3 EB 78 */ mr r3, r29
/* 800EE120 000EB060  4B FC B2 21 */ bl daAlink_c_NS_checkEquipAnime
/* 800EE124 000EB064  2C 03 00 00 */ cmpwi r3, 0
/* 800EE128 000EB068  40 82 00 30 */ bne lbl_800EE158
/* 800EE12C 000EB06C  7F A3 EB 78 */ mr r3, r29
/* 800EE130 000EB070  4B FE EC C1 */ bl daAlink_c_NS_checkUpperGuardAnime
/* 800EE134 000EB074  2C 03 00 00 */ cmpwi r3, 0
/* 800EE138 000EB078  40 82 00 20 */ bne lbl_800EE158
lbl_800EE13C:
/* 800EE13C 000EB07C  A0 1D 2F E8 */ lhz r0, 0x2fe8(r29)
/* 800EE140 000EB080  28 00 00 41 */ cmplwi r0, 0x41
/* 800EE144 000EB084  41 82 00 14 */ beq lbl_800EE158
/* 800EE148 000EB088  28 00 00 43 */ cmplwi r0, 0x43
/* 800EE14C 000EB08C  41 82 00 0C */ beq lbl_800EE158
/* 800EE150 000EB090  28 00 00 42 */ cmplwi r0, 0x42
/* 800EE154 000EB094  40 82 01 70 */ bne lbl_800EE2C4
lbl_800EE158:
/* 800EE158 000EB098  4B FF E6 BD */ bl daAlink_c_NS_checkCowGame
/* 800EE15C 000EB09C  2C 03 00 00 */ cmpwi r3, 0
/* 800EE160 000EB0A0  41 82 00 7C */ beq lbl_800EE1DC
/* 800EE164 000EB0A4  7F A3 EB 78 */ mr r3, r29
/* 800EE168 000EB0A8  4B FF EF 0D */ bl daAlink_c_NS_checkHorseNoUpperAnime
/* 800EE16C 000EB0AC  2C 03 00 00 */ cmpwi r3, 0
/* 800EE170 000EB0B0  41 82 01 54 */ beq lbl_800EE2C4
/* 800EE174 000EB0B4  7F A3 EB 78 */ mr r3, r29
/* 800EE178 000EB0B8  38 80 00 28 */ li r4, 0x28
/* 800EE17C 000EB0BC  4B FC 50 D5 */ bl daAlink_c_NS_setDoStatus
/* 800EE180 000EB0C0  88 1D 2F 8D */ lbz r0, 0x2f8d(r29)
/* 800EE184 000EB0C4  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EE188 000EB0C8  41 82 01 3C */ beq lbl_800EE2C4
/* 800EE18C 000EB0CC  80 1D 05 80 */ lwz r0, 0x580(r29)
/* 800EE190 000EB0D0  60 00 02 00 */ ori r0, r0, 0x200
/* 800EE194 000EB0D4  90 1D 05 80 */ stw r0, 0x580(r29)
/* 800EE198 000EB0D8  7F A3 EB 78 */ mr r3, r29
/* 800EE19C 000EB0DC  3C 80 00 01 */ lis r4, 0x0001001B@ha
/* 800EE1A0 000EB0E0  38 84 00 1B */ addi r4, r4, 0x0001001B@l
/* 800EE1A4 000EB0E4  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 800EE1A8 000EB0E8  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800EE1AC 000EB0EC  7D 89 03 A6 */ mtctr r12
/* 800EE1B0 000EB0F0  4E 80 04 21 */ bctrl
/* 800EE1B4 000EB0F4  3C 60 80 39 */ lis r3, lbl_8038E5A4@ha
/* 800EE1B8 000EB0F8  3B C3 E5 A4 */ addi r30, r3, lbl_8038E5A4@l
/* 800EE1BC 000EB0FC  A8 1E 00 56 */ lha r0, 0x56(r30)
/* 800EE1C0 000EB100  B0 1D 30 A6 */ sth r0, 0x30a6(r29)
/* 800EE1C4 000EB104  7F A3 EB 78 */ mr r3, r29
/* 800EE1C8 000EB108  4B FF ED D5 */ bl daAlink_c_NS_setHorseSwordUpAnime
/* 800EE1CC 000EB10C  A8 1E 00 56 */ lha r0, 0x56(r30)
/* 800EE1D0 000EB110  7C 00 00 D0 */ neg r0, r0
/* 800EE1D4 000EB114  B0 1D 30 02 */ sth r0, 0x3002(r29)
/* 800EE1D8 000EB118  48 00 00 EC */ b lbl_800EE2C4
lbl_800EE1DC:
/* 800EE1DC 000EB11C  4B FF E6 01 */ bl daAlink_c_NS_checkHorseDashAccept
/* 800EE1E0 000EB120  2C 03 00 00 */ cmpwi r3, 0
/* 800EE1E4 000EB124  41 82 00 E0 */ beq lbl_800EE2C4
/* 800EE1E8 000EB128  7F A3 EB 78 */ mr r3, r29
/* 800EE1EC 000EB12C  38 80 00 09 */ li r4, 9
/* 800EE1F0 000EB130  4B FC 50 61 */ bl daAlink_c_NS_setDoStatus
/* 800EE1F4 000EB134  88 1D 2F 8D */ lbz r0, 0x2f8d(r29)
/* 800EE1F8 000EB138  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EE1FC 000EB13C  41 82 00 C8 */ beq lbl_800EE2C4
/* 800EE200 000EB140  3C 60 80 39 */ lis r3, lbl_8038E5A4@ha
/* 800EE204 000EB144  38 63 E5 A4 */ addi r3, r3, lbl_8038E5A4@l
/* 800EE208 000EB148  A8 03 00 54 */ lha r0, 0x54(r3)
/* 800EE20C 000EB14C  B0 1D 30 04 */ sth r0, 0x3004(r29)
/* 800EE210 000EB150  3B 83 00 28 */ addi r28, r3, 0x28
/* 800EE214 000EB154  A0 1D 2F E8 */ lhz r0, 0x2fe8(r29)
/* 800EE218 000EB158  28 00 00 41 */ cmplwi r0, 0x41
/* 800EE21C 000EB15C  41 82 00 24 */ beq lbl_800EE240
/* 800EE220 000EB160  28 00 00 43 */ cmplwi r0, 0x43
/* 800EE224 000EB164  41 82 00 1C */ beq lbl_800EE240
/* 800EE228 000EB168  28 00 00 42 */ cmplwi r0, 0x42
/* 800EE22C 000EB16C  41 82 00 14 */ beq lbl_800EE240
/* 800EE230 000EB170  7F A3 EB 78 */ mr r3, r29
/* 800EE234 000EB174  38 80 00 4F */ li r4, 0x4f
/* 800EE238 000EB178  7F 85 E3 78 */ mr r5, r28
/* 800EE23C 000EB17C  4B FB EE B9 */ bl daAlink_c_NS_setSingleAnimeParam
lbl_800EE240:
/* 800EE240 000EB180  7F A3 EB 78 */ mr r3, r29
/* 800EE244 000EB184  38 80 00 4F */ li r4, 0x4f
/* 800EE248 000EB188  4B FB E2 09 */ bl daAlink_c_NS_getMainBckData
/* 800EE24C 000EB18C  A0 83 00 00 */ lhz r4, 0(r3)
/* 800EE250 000EB190  7F A3 EB 78 */ mr r3, r29
/* 800EE254 000EB194  38 A0 00 02 */ li r5, 2
/* 800EE258 000EB198  7F 86 E3 78 */ mr r6, r28
/* 800EE25C 000EB19C  4B FB F8 5D */ bl daAlink_c_NS_setUnderAnimeParam
/* 800EE260 000EB1A0  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800EE264 000EB1A4  60 00 10 00 */ ori r0, r0, 0x1000
/* 800EE268 000EB1A8  90 1D 05 74 */ stw r0, 0x574(r29)
/* 800EE26C 000EB1AC  80 1F 17 44 */ lwz r0, 0x1744(r31)
/* 800EE270 000EB1B0  54 00 04 1C */ rlwinm r0, r0, 0, 0x10, 0xe
/* 800EE274 000EB1B4  90 1F 17 44 */ stw r0, 0x1744(r31)
/* 800EE278 000EB1B8  7F A3 EB 78 */ mr r3, r29
/* 800EE27C 000EB1BC  3C 80 00 01 */ lis r4, 0x0001001B@ha
/* 800EE280 000EB1C0  38 84 00 1B */ addi r4, r4, 0x0001001B@l
/* 800EE284 000EB1C4  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 800EE288 000EB1C8  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800EE28C 000EB1CC  7D 89 03 A6 */ mtctr r12
/* 800EE290 000EB1D0  4E 80 04 21 */ bctrl
/* 800EE294 000EB1D4  C0 3F 05 2C */ lfs f1, 0x52c(r31)
/* 800EE298 000EB1D8  C0 1F 17 8C */ lfs f0, 0x178c(r31)
/* 800EE29C 000EB1DC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE2A0 000EB1E0  4C 40 13 82 */ cror 2, 0, 2
/* 800EE2A4 000EB1E4  40 82 00 10 */ bne lbl_800EE2B4
/* 800EE2A8 000EB1E8  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800EE2AC 000EB1EC  60 00 08 00 */ ori r0, r0, 0x800
/* 800EE2B0 000EB1F0  90 1D 05 74 */ stw r0, 0x574(r29)
lbl_800EE2B4:
/* 800EE2B4 000EB1F4  3C 60 80 39 */ lis r3, lbl_8038E5A4@ha
/* 800EE2B8 000EB1F8  38 63 E5 A4 */ addi r3, r3, lbl_8038E5A4@l
/* 800EE2BC 000EB1FC  A8 03 00 56 */ lha r0, 0x56(r3)
/* 800EE2C0 000EB200  B0 1D 30 A6 */ sth r0, 0x30a6(r29)
lbl_800EE2C4:
/* 800EE2C4 000EB204  7F A3 EB 78 */ mr r3, r29
/* 800EE2C8 000EB208  38 80 00 4D */ li r4, 0x4d
/* 800EE2CC 000EB20C  4B FB E2 8D */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 800EE2D0 000EB210  2C 03 00 00 */ cmpwi r3, 0
/* 800EE2D4 000EB214  41 82 00 1C */ beq lbl_800EE2F0
/* 800EE2D8 000EB218  C0 3D 1F E0 */ lfs f1, 0x1fe0(r29)
/* 800EE2DC 000EB21C  3C 60 80 39 */ lis r3, lbl_8038E5A4@ha
/* 800EE2E0 000EB220  38 63 E5 A4 */ addi r3, r3, lbl_8038E5A4@l
/* 800EE2E4 000EB224  C0 03 00 64 */ lfs f0, 0x64(r3)
/* 800EE2E8 000EB228  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE2EC 000EB22C  41 81 00 24 */ bgt lbl_800EE310
lbl_800EE2F0:
/* 800EE2F0 000EB230  7F A3 EB 78 */ mr r3, r29
/* 800EE2F4 000EB234  4B FF EA D1 */ bl daAlink_c_NS_checkHorseWaitLashAnime
/* 800EE2F8 000EB238  2C 03 00 00 */ cmpwi r3, 0
/* 800EE2FC 000EB23C  41 82 00 20 */ beq lbl_800EE31C
/* 800EE300 000EB240  C0 3D 20 10 */ lfs f1, 0x2010(r29)
/* 800EE304 000EB244  C0 02 93 84 */ lfs f0, lbl_80452D84-_SDA2_BASE_(r2)
/* 800EE308 000EB248  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE30C 000EB24C  40 81 00 10 */ ble lbl_800EE31C
lbl_800EE310:
/* 800EE310 000EB250  80 1F 17 4C */ lwz r0, 0x174c(r31)
/* 800EE314 000EB254  60 00 00 10 */ ori r0, r0, 0x10
/* 800EE318 000EB258  90 1F 17 4C */ stw r0, 0x174c(r31)
lbl_800EE31C:
/* 800EE31C 000EB25C  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800EE320 000EB260  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800EE324 000EB264  41 82 00 54 */ beq lbl_800EE378
/* 800EE328 000EB268  A0 1D 1F 80 */ lhz r0, 0x1f80(r29)
/* 800EE32C 000EB26C  28 00 00 DD */ cmplwi r0, 0xdd
/* 800EE330 000EB270  40 82 00 14 */ bne lbl_800EE344
/* 800EE334 000EB274  C0 3D 20 10 */ lfs f1, 0x2010(r29)
/* 800EE338 000EB278  C0 02 93 84 */ lfs f0, lbl_80452D84-_SDA2_BASE_(r2)
/* 800EE33C 000EB27C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE340 000EB280  41 81 00 20 */ bgt lbl_800EE360
lbl_800EE344:
/* 800EE344 000EB284  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800EE348 000EB288  28 00 01 B3 */ cmplwi r0, 0x1b3
/* 800EE34C 000EB28C  40 82 00 2C */ bne lbl_800EE378
/* 800EE350 000EB290  C0 3D 20 10 */ lfs f1, 0x2010(r29)
/* 800EE354 000EB294  C0 02 93 84 */ lfs f0, lbl_80452D84-_SDA2_BASE_(r2)
/* 800EE358 000EB298  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE35C 000EB29C  40 81 00 1C */ ble lbl_800EE378
lbl_800EE360:
/* 800EE360 000EB2A0  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800EE364 000EB2A4  54 00 05 24 */ rlwinm r0, r0, 0, 0x14, 0x12
/* 800EE368 000EB2A8  90 1D 05 74 */ stw r0, 0x574(r29)
/* 800EE36C 000EB2AC  80 1F 17 4C */ lwz r0, 0x174c(r31)
/* 800EE370 000EB2B0  60 00 00 18 */ ori r0, r0, 0x18
/* 800EE374 000EB2B4  90 1F 17 4C */ stw r0, 0x174c(r31)
lbl_800EE378:
/* 800EE378 000EB2B8  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 800EE37C 000EB2BC  28 00 00 CC */ cmplwi r0, 0xcc
/* 800EE380 000EB2C0  40 82 00 DC */ bne lbl_800EE45C
/* 800EE384 000EB2C4  4B FF E3 E9 */ bl daAlink_c_NS_checkHorseZeldaBowMode
/* 800EE388 000EB2C8  2C 03 00 00 */ cmpwi r3, 0
/* 800EE38C 000EB2CC  41 82 00 28 */ beq lbl_800EE3B4
/* 800EE390 000EB2D0  7F A3 EB 78 */ mr r3, r29
/* 800EE394 000EB2D4  38 80 00 02 */ li r4, 2
/* 800EE398 000EB2D8  3C A0 80 39 */ lis r5, lbl_8038E5A4@ha
/* 800EE39C 000EB2DC  38 A5 E5 A4 */ addi r5, r5, lbl_8038E5A4@l
/* 800EE3A0 000EB2E0  C0 25 00 60 */ lfs f1, 0x60(r5)
/* 800EE3A4 000EB2E4  4B FB F3 81 */ bl daAlink_c_NS_resetUpperAnime
/* 800EE3A8 000EB2E8  38 00 00 00 */ li r0, 0
/* 800EE3AC 000EB2EC  B0 1D 30 02 */ sth r0, 0x3002(r29)
/* 800EE3B0 000EB2F0  48 00 00 AC */ b lbl_800EE45C
lbl_800EE3B4:
/* 800EE3B4 000EB2F4  A8 7D 30 02 */ lha r3, 0x3002(r29)
/* 800EE3B8 000EB2F8  2C 03 00 00 */ cmpwi r3, 0
/* 800EE3BC 000EB2FC  40 81 00 4C */ ble lbl_800EE408
/* 800EE3C0 000EB300  38 03 FF FF */ addi r0, r3, -1
/* 800EE3C4 000EB304  B0 1D 30 02 */ sth r0, 0x3002(r29)
/* 800EE3C8 000EB308  A8 1D 30 02 */ lha r0, 0x3002(r29)
/* 800EE3CC 000EB30C  2C 00 00 00 */ cmpwi r0, 0
/* 800EE3D0 000EB310  41 82 00 14 */ beq lbl_800EE3E4
/* 800EE3D4 000EB314  C0 3F 05 2C */ lfs f1, 0x52c(r31)
/* 800EE3D8 000EB318  C0 1F 17 8C */ lfs f0, 0x178c(r31)
/* 800EE3DC 000EB31C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE3E0 000EB320  40 80 00 7C */ bge lbl_800EE45C
lbl_800EE3E4:
/* 800EE3E4 000EB324  7F A3 EB 78 */ mr r3, r29
/* 800EE3E8 000EB328  38 80 00 02 */ li r4, 2
/* 800EE3EC 000EB32C  3C A0 80 39 */ lis r5, lbl_8038E5A4@ha
/* 800EE3F0 000EB330  38 A5 E5 A4 */ addi r5, r5, lbl_8038E5A4@l
/* 800EE3F4 000EB334  C0 25 00 60 */ lfs f1, 0x60(r5)
/* 800EE3F8 000EB338  4B FB F3 2D */ bl daAlink_c_NS_resetUpperAnime
/* 800EE3FC 000EB33C  38 00 00 00 */ li r0, 0
/* 800EE400 000EB340  B0 1D 30 02 */ sth r0, 0x3002(r29)
/* 800EE404 000EB344  48 00 00 58 */ b lbl_800EE45C
lbl_800EE408:
/* 800EE408 000EB348  3C 60 80 39 */ lis r3, lbl_8038E5A4@ha
/* 800EE40C 000EB34C  3B C3 E5 A4 */ addi r30, r3, lbl_8038E5A4@l
/* 800EE410 000EB350  C0 3E 00 60 */ lfs f1, 0x60(r30)
/* 800EE414 000EB354  FC 00 08 1E */ fctiwz f0, f1
/* 800EE418 000EB358  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 800EE41C 000EB35C  80 01 00 1C */ lwz r0, 0x1c(r1)
/* 800EE420 000EB360  B0 1D 30 EC */ sth r0, 0x30ec(r29)
/* 800EE424 000EB364  A8 7D 30 02 */ lha r3, 0x3002(r29)
/* 800EE428 000EB368  38 03 00 01 */ addi r0, r3, 1
/* 800EE42C 000EB36C  B0 1D 30 02 */ sth r0, 0x3002(r29)
/* 800EE430 000EB370  A8 1D 30 02 */ lha r0, 0x3002(r29)
/* 800EE434 000EB374  2C 00 00 00 */ cmpwi r0, 0
/* 800EE438 000EB378  40 82 00 24 */ bne lbl_800EE45C
/* 800EE43C 000EB37C  7F A3 EB 78 */ mr r3, r29
/* 800EE440 000EB380  38 80 00 02 */ li r4, 2
/* 800EE444 000EB384  4B FB F2 E1 */ bl daAlink_c_NS_resetUpperAnime
/* 800EE448 000EB388  C0 1E 00 60 */ lfs f0, 0x60(r30)
/* 800EE44C 000EB38C  FC 00 00 1E */ fctiwz f0, f0
/* 800EE450 000EB390  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 800EE454 000EB394  80 01 00 1C */ lwz r0, 0x1c(r1)
/* 800EE458 000EB398  B0 1D 30 EC */ sth r0, 0x30ec(r29)
lbl_800EE45C:
/* 800EE45C 000EB39C  3B 80 00 01 */ li r28, 1
/* 800EE460 000EB3A0  38 7D 1F D0 */ addi r3, r29, 0x1fd0
/* 800EE464 000EB3A4  48 07 00 69 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800EE468 000EB3A8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EE46C 000EB3AC  40 82 00 50 */ bne lbl_800EE4BC
/* 800EE470 000EB3B0  3B C0 00 00 */ li r30, 0
/* 800EE474 000EB3B4  7F A3 EB 78 */ mr r3, r29
/* 800EE478 000EB3B8  4B FF FA 15 */ bl daAlink_c_NS_checkHorseServiceWaitAnime
/* 800EE47C 000EB3BC  2C 03 00 00 */ cmpwi r3, 0
/* 800EE480 000EB3C0  41 82 00 30 */ beq lbl_800EE4B0
/* 800EE484 000EB3C4  7F A3 EB 78 */ mr r3, r29
/* 800EE488 000EB3C8  4B FC AD CD */ bl daAlink_c_NS_checkNoUpperAnime
/* 800EE48C 000EB3CC  2C 03 00 00 */ cmpwi r3, 0
/* 800EE490 000EB3D0  41 82 00 1C */ beq lbl_800EE4AC
/* 800EE494 000EB3D4  A8 1F 16 F2 */ lha r0, 0x16f2(r31)
/* 800EE498 000EB3D8  7C 00 07 35 */ extsh. r0, r0
/* 800EE49C 000EB3DC  40 82 00 10 */ bne lbl_800EE4AC
/* 800EE4A0 000EB3E0  80 1D 31 A0 */ lwz r0, 0x31a0(r29)
/* 800EE4A4 000EB3E4  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800EE4A8 000EB3E8  40 82 00 08 */ bne lbl_800EE4B0
lbl_800EE4AC:
/* 800EE4AC 000EB3EC  3B C0 00 01 */ li r30, 1
lbl_800EE4B0:
/* 800EE4B0 000EB3F0  57 C0 06 3F */ clrlwi. r0, r30, 0x18
/* 800EE4B4 000EB3F4  40 82 00 08 */ bne lbl_800EE4BC
/* 800EE4B8 000EB3F8  3B 80 00 00 */ li r28, 0
lbl_800EE4BC:
/* 800EE4BC 000EB3FC  57 9C 06 3F */ clrlwi. r28, r28, 0x18
/* 800EE4C0 000EB400  40 82 00 50 */ bne lbl_800EE510
/* 800EE4C4 000EB404  80 61 00 08 */ lwz r3, 8(r1)
/* 800EE4C8 000EB408  38 03 FF A6 */ addi r0, r3, -90
/* 800EE4CC 000EB40C  28 00 00 01 */ cmplwi r0, 1
/* 800EE4D0 000EB410  40 81 00 40 */ ble lbl_800EE510
/* 800EE4D4 000EB414  2C 03 00 4E */ cmpwi r3, 0x4e
/* 800EE4D8 000EB418  41 82 00 38 */ beq lbl_800EE510
/* 800EE4DC 000EB41C  7F A3 EB 78 */ mr r3, r29
/* 800EE4E0 000EB420  4B FC 41 85 */ bl daAlink_c_NS_spActionButton
/* 800EE4E4 000EB424  2C 03 00 00 */ cmpwi r3, 0
/* 800EE4E8 000EB428  41 82 00 34 */ beq lbl_800EE51C
/* 800EE4EC 000EB42C  7F A3 EB 78 */ mr r3, r29
/* 800EE4F0 000EB430  38 80 00 4D */ li r4, 0x4d
/* 800EE4F4 000EB434  4B FB E0 65 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 800EE4F8 000EB438  2C 03 00 00 */ cmpwi r3, 0
/* 800EE4FC 000EB43C  40 82 00 20 */ bne lbl_800EE51C
/* 800EE500 000EB440  7F A3 EB 78 */ mr r3, r29
/* 800EE504 000EB444  4B FF E8 C1 */ bl daAlink_c_NS_checkHorseWaitLashAnime
/* 800EE508 000EB448  2C 03 00 00 */ cmpwi r3, 0
/* 800EE50C 000EB44C  40 82 00 10 */ bne lbl_800EE51C
lbl_800EE510:
/* 800EE510 000EB450  A0 1D 2F E8 */ lhz r0, 0x2fe8(r29)
/* 800EE514 000EB454  28 00 00 43 */ cmplwi r0, 0x43
/* 800EE518 000EB458  40 82 00 10 */ bne lbl_800EE528
lbl_800EE51C:
/* 800EE51C 000EB45C  88 1D 2F 8C */ lbz r0, 0x2f8c(r29)
/* 800EE520 000EB460  28 00 00 0A */ cmplwi r0, 0xa
/* 800EE524 000EB464  40 82 00 FC */ bne lbl_800EE620
lbl_800EE528:
/* 800EE528 000EB468  2C 1C 00 00 */ cmpwi r28, 0
/* 800EE52C 000EB46C  40 82 00 1C */ bne lbl_800EE548
/* 800EE530 000EB470  A8 9D 30 04 */ lha r4, 0x3004(r29)
/* 800EE534 000EB474  3C 60 80 39 */ lis r3, lbl_8038E5A4@ha
/* 800EE538 000EB478  38 63 E5 A4 */ addi r3, r3, lbl_8038E5A4@l
/* 800EE53C 000EB47C  A8 03 00 54 */ lha r0, 0x54(r3)
/* 800EE540 000EB480  7C 04 00 00 */ cmpw r4, r0
/* 800EE544 000EB484  41 82 00 18 */ beq lbl_800EE55C
lbl_800EE548:
/* 800EE548 000EB488  A8 7D 30 04 */ lha r3, 0x3004(r29)
/* 800EE54C 000EB48C  2C 03 00 00 */ cmpwi r3, 0
/* 800EE550 000EB490  41 82 00 0C */ beq lbl_800EE55C
/* 800EE554 000EB494  38 03 FF FF */ addi r0, r3, -1
/* 800EE558 000EB498  B0 1D 30 04 */ sth r0, 0x3004(r29)
lbl_800EE55C:
/* 800EE55C 000EB49C  2C 1C 00 00 */ cmpwi r28, 0
/* 800EE560 000EB4A0  41 82 00 1C */ beq lbl_800EE57C
/* 800EE564 000EB4A4  C0 3F 17 50 */ lfs f1, 0x1750(r31)
/* 800EE568 000EB4A8  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 800EE56C 000EB4AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE570 000EB4B0  40 80 00 0C */ bge lbl_800EE57C
/* 800EE574 000EB4B4  FF E0 00 90 */ fmr f31, f0
/* 800EE578 000EB4B8  48 00 00 08 */ b lbl_800EE580
lbl_800EE57C:
/* 800EE57C 000EB4BC  C3 FF 17 50 */ lfs f31, 0x1750(r31)
lbl_800EE580:
/* 800EE580 000EB4C0  80 01 00 08 */ lwz r0, 8(r1)
/* 800EE584 000EB4C4  2C 00 00 5A */ cmpwi r0, 0x5a
/* 800EE588 000EB4C8  41 82 00 14 */ beq lbl_800EE59C
/* 800EE58C 000EB4CC  2C 00 00 54 */ cmpwi r0, 0x54
/* 800EE590 000EB4D0  41 82 00 0C */ beq lbl_800EE59C
/* 800EE594 000EB4D4  2C 00 00 5B */ cmpwi r0, 0x5b
/* 800EE598 000EB4D8  40 82 00 0C */ bne lbl_800EE5A4
lbl_800EE59C:
/* 800EE59C 000EB4DC  C3 C2 92 C0 */ lfs f30, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EE5A0 000EB4E0  48 00 00 08 */ b lbl_800EE5A8
lbl_800EE5A4:
/* 800EE5A4 000EB4E4  C3 DF 05 9C */ lfs f30, 0x59c(r31)
lbl_800EE5A8:
/* 800EE5A8 000EB4E8  2C 00 00 4E */ cmpwi r0, 0x4e
/* 800EE5AC 000EB4EC  40 82 00 34 */ bne lbl_800EE5E0
/* 800EE5B0 000EB4F0  7F A3 EB 78 */ mr r3, r29
/* 800EE5B4 000EB4F4  38 80 00 4E */ li r4, 0x4e
/* 800EE5B8 000EB4F8  4B FB DF A1 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 800EE5BC 000EB4FC  2C 03 00 00 */ cmpwi r3, 0
/* 800EE5C0 000EB500  40 82 00 20 */ bne lbl_800EE5E0
/* 800EE5C4 000EB504  7F A3 EB 78 */ mr r3, r29
/* 800EE5C8 000EB508  3C 80 00 01 */ lis r4, 0x0001001B@ha
/* 800EE5CC 000EB50C  38 84 00 1B */ addi r4, r4, 0x0001001B@l
/* 800EE5D0 000EB510  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 800EE5D4 000EB514  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800EE5D8 000EB518  7D 89 03 A6 */ mtctr r12
/* 800EE5DC 000EB51C  4E 80 04 21 */ bctrl
lbl_800EE5E0:
/* 800EE5E0 000EB520  7F A3 EB 78 */ mr r3, r29
/* 800EE5E4 000EB524  FC 20 F0 90 */ fmr f1, f30
/* 800EE5E8 000EB528  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800EE5EC 000EB52C  FC 60 10 90 */ fmr f3, f2
/* 800EE5F0 000EB530  80 81 00 08 */ lwz r4, 8(r1)
/* 800EE5F4 000EB534  80 A1 00 0C */ lwz r5, 0xc(r1)
/* 800EE5F8 000EB538  38 C0 00 0A */ li r6, 0xa
/* 800EE5FC 000EB53C  FC 80 F8 90 */ fmr f4, f31
/* 800EE600 000EB540  4B FB E4 15 */ bl daAlink_c_NS_setDoubleAnime
/* 800EE604 000EB544  7F A3 EB 78 */ mr r3, r29
/* 800EE608 000EB548  48 00 04 E1 */ bl daAlink_c_NS_setBaseHorseAnimeFrame
/* 800EE60C 000EB54C  2C 1C 00 00 */ cmpwi r28, 0
/* 800EE610 000EB550  41 82 00 10 */ beq lbl_800EE620
/* 800EE614 000EB554  7F A3 EB 78 */ mr r3, r29
/* 800EE618 000EB558  38 80 00 00 */ li r4, 0
/* 800EE61C 000EB55C  48 00 08 41 */ bl daAlink_c_NS_setHorseSwordUp
lbl_800EE620:
/* 800EE620 000EB560  38 60 00 01 */ li r3, 1
lbl_800EE624:
/* 800EE624 000EB564  E3 E1 00 48 */ psq_l f31, 72(r1), 0, 0
/* 800EE628 000EB568  CB E1 00 40 */ lfd f31, 0x40(r1)
/* 800EE62C 000EB56C  E3 C1 00 38 */ psq_l f30, 56(r1), 0, 0
/* 800EE630 000EB570  CB C1 00 30 */ lfd f30, 0x30(r1)
/* 800EE634 000EB574  39 61 00 30 */ addi r11, r1, 0x30
/* 800EE638 000EB578  48 27 3B ED */ bl _restgpr_28
/* 800EE63C 000EB57C  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800EE640 000EB580  7C 08 03 A6 */ mtlr r0
/* 800EE644 000EB584  38 21 00 50 */ addi r1, r1, 0x50
/* 800EE648 000EB588  4E 80 00 20 */ blr
