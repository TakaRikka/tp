/* 802CC190 002C90D0  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 802CC194 002C90D4  7C 08 02 A6 */ mflr r0
/* 802CC198 002C90D8  90 01 00 34 */ stw r0, 0x34(r1)
/* 802CC19C 002C90DC  39 61 00 30 */ addi r11, r1, 0x30
/* 802CC1A0 002C90E0  48 09 60 3D */ bl _savegpr_29
/* 802CC1A4 002C90E4  7C 7E 1B 78 */ mr r30, r3
/* 802CC1A8 002C90E8  7C 9F 23 78 */ mr r31, r4
/* 802CC1AC 002C90EC  80 6D 86 00 */ lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 802CC1B0 002C90F0  88 03 00 1D */ lbz r0, 0x1d(r3)
/* 802CC1B4 002C90F4  28 00 00 00 */ cmplwi r0, 0
/* 802CC1B8 002C90F8  41 82 01 2C */ beq lbl_802CC2E4
/* 802CC1BC 002C90FC  88 1E 03 FE */ lbz r0, 0x3fe(r30)
/* 802CC1C0 002C9100  28 00 00 01 */ cmplwi r0, 1
/* 802CC1C4 002C9104  41 82 00 0C */ beq lbl_802CC1D0
/* 802CC1C8 002C9108  28 00 00 02 */ cmplwi r0, 2
/* 802CC1CC 002C910C  40 82 01 18 */ bne lbl_802CC2E4
lbl_802CC1D0:
/* 802CC1D0 002C9110  88 1E 04 00 */ lbz r0, 0x400(r30)
/* 802CC1D4 002C9114  28 00 00 00 */ cmplwi r0, 0
/* 802CC1D8 002C9118  40 82 01 0C */ bne lbl_802CC2E4
/* 802CC1DC 002C911C  88 1E 03 FF */ lbz r0, 0x3ff(r30)
/* 802CC1E0 002C9120  28 00 00 1E */ cmplwi r0, 0x1e
/* 802CC1E4 002C9124  41 81 01 00 */ bgt lbl_802CC2E4
/* 802CC1E8 002C9128  A8 7E 03 FA */ lha r3, 0x3fa(r30)
/* 802CC1EC 002C912C  A8 1E 03 F8 */ lha r0, 0x3f8(r30)
/* 802CC1F0 002C9130  7C 03 00 00 */ cmpw r3, r0
/* 802CC1F4 002C9134  41 80 00 18 */ blt lbl_802CC20C
/* 802CC1F8 002C9138  7F C3 F3 78 */ mr r3, r30
/* 802CC1FC 002C913C  48 00 05 3D */ bl Z2SpeechMgr2_NS_selectTail
/* 802CC200 002C9140  38 00 00 01 */ li r0, 1
/* 802CC204 002C9144  98 1E 04 00 */ stb r0, 0x400(r30)
/* 802CC208 002C9148  48 00 00 14 */ b lbl_802CC21C
lbl_802CC20C:
/* 802CC20C 002C914C  7F C3 F3 78 */ mr r3, r30
/* 802CC210 002C9150  48 00 00 ED */ bl Z2SpeechMgr2_NS_isNonVerbal
/* 802CC214 002C9154  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 802CC218 002C9158  40 82 00 CC */ bne lbl_802CC2E4
lbl_802CC21C:
/* 802CC21C 002C915C  A0 7E 03 FC */ lhz r3, 0x3fc(r30)
/* 802CC220 002C9160  3F A3 00 05 */ addis r29, r3, 5
/* 802CC224 002C9164  80 6D 86 00 */ lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 802CC228 002C9168  88 63 00 0C */ lbz r3, 0xc(r3)
/* 802CC22C 002C916C  7C 63 07 74 */ extsb r3, r3
/* 802CC230 002C9170  3B BD 00 A1 */ addi r29, r29, 0xa1
/* 802CC234 002C9174  4B D6 0E 39 */ bl dComIfGp_getReverb
/* 802CC238 002C9178  7C 60 1B 78 */ mr r0, r3
/* 802CC23C 002C917C  93 A1 00 08 */ stw r29, 8(r1)
/* 802CC240 002C9180  38 7E 00 0C */ addi r3, r30, 0xc
/* 802CC244 002C9184  38 81 00 08 */ addi r4, r1, 8
/* 802CC248 002C9188  7F C5 F3 78 */ mr r5, r30
/* 802CC24C 002C918C  38 C0 00 00 */ li r6, 0
/* 802CC250 002C9190  38 E0 00 00 */ li r7, 0
/* 802CC254 002C9194  7C 00 07 74 */ extsb r0, r0
/* 802CC258 002C9198  C8 22 C5 40 */ lfd f1, lbl_80455F40-_SDA2_BASE_(r2)
/* 802CC25C 002C919C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 802CC260 002C91A0  90 01 00 14 */ stw r0, 0x14(r1)
/* 802CC264 002C91A4  3C 00 43 30 */ lis r0, 0x4330
/* 802CC268 002C91A8  90 01 00 10 */ stw r0, 0x10(r1)
/* 802CC26C 002C91AC  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 802CC270 002C91B0  EC 20 08 28 */ fsubs f1, f0, f1
/* 802CC274 002C91B4  C0 02 C5 3C */ lfs f0, lbl_80455F3C-_SDA2_BASE_(r2)
/* 802CC278 002C91B8  EC 21 00 24 */ fdivs f1, f1, f0
/* 802CC27C 002C91BC  C0 42 C5 34 */ lfs f2, lbl_80455F34-_SDA2_BASE_(r2)
/* 802CC280 002C91C0  FC 60 10 90 */ fmr f3, f2
/* 802CC284 002C91C4  C0 82 C5 38 */ lfs f4, lbl_80455F38-_SDA2_BASE_(r2)
/* 802CC288 002C91C8  FC A0 20 90 */ fmr f5, f4
/* 802CC28C 002C91CC  39 00 00 00 */ li r8, 0
/* 802CC290 002C91D0  81 9E 00 0C */ lwz r12, 0xc(r30)
/* 802CC294 002C91D4  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 802CC298 002C91D8  7D 89 03 A6 */ mtctr r12
/* 802CC29C 002C91DC  4E 80 04 21 */ bctrl
/* 802CC2A0 002C91E0  38 7E 00 0C */ addi r3, r30, 0xc
/* 802CC2A4 002C91E4  7F C4 F3 78 */ mr r4, r30
/* 802CC2A8 002C91E8  38 A0 00 08 */ li r5, 8
/* 802CC2AC 002C91EC  88 1E 04 01 */ lbz r0, 0x401(r30)
/* 802CC2B0 002C91F0  7C DE 02 14 */ add r6, r30, r0
/* 802CC2B4 002C91F4  88 06 04 01 */ lbz r0, 0x401(r6)
/* 802CC2B8 002C91F8  7C 06 07 74 */ extsb r6, r0
/* 802CC2BC 002C91FC  38 06 00 01 */ addi r0, r6, 1
/* 802CC2C0 002C9200  54 06 04 3E */ clrlwi r6, r0, 0x10
/* 802CC2C4 002C9204  38 E0 FF FF */ li r7, -1
/* 802CC2C8 002C9208  4B FD EC 15 */ bl Z2SoundStarter_NS_setPortData
/* 802CC2CC 002C920C  88 1E 04 00 */ lbz r0, 0x400(r30)
/* 802CC2D0 002C9210  28 00 00 00 */ cmplwi r0, 0
/* 802CC2D4 002C9214  40 82 00 10 */ bne lbl_802CC2E4
/* 802CC2D8 002C9218  7F C3 F3 78 */ mr r3, r30
/* 802CC2DC 002C921C  7F E4 FB 78 */ mr r4, r31
/* 802CC2E0 002C9220  48 00 01 E1 */ bl Z2SpeechMgr2_NS_selectUnit
lbl_802CC2E4:
/* 802CC2E4 002C9224  39 61 00 30 */ addi r11, r1, 0x30
/* 802CC2E8 002C9228  48 09 5F 41 */ bl _restgpr_29
/* 802CC2EC 002C922C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 802CC2F0 002C9230  7C 08 03 A6 */ mtlr r0
/* 802CC2F4 002C9234  38 21 00 30 */ addi r1, r1, 0x30
/* 802CC2F8 002C9238  4E 80 00 20 */ blr