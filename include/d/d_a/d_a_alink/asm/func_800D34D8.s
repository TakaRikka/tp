/* 800D34D8 000D0418  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 800D34DC 000D041C  7C 08 02 A6 */ mflr r0
/* 800D34E0 000D0420  90 01 00 44 */ stw r0, 0x44(r1)
/* 800D34E4 000D0424  DB E1 00 30 */ stfd f31, 0x30(r1)
/* 800D34E8 000D0428  F3 E1 00 38 */ psq_st f31, 56(r1), 0, 0
/* 800D34EC 000D042C  39 61 00 30 */ addi r11, r1, 0x30
/* 800D34F0 000D0430  48 28 EC DD */ bl _savegpr_25
/* 800D34F4 000D0434  7C 7C 1B 78 */ mr r28, r3
/* 800D34F8 000D0438  7C 9D 23 78 */ mr r29, r4
/* 800D34FC 000D043C  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 800D3500 000D0440  3B 64 D6 58 */ addi r27, r4, lbl_8038D658@l
/* 800D3504 000D0444  57 A0 20 36 */ slwi r0, r29, 4
/* 800D3508 000D0448  3B FB 42 00 */ addi r31, r27, 0x4200
/* 800D350C 000D044C  7F FF 02 14 */ add r31, r31, r0
/* 800D3510 000D0450  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 800D3514 000D0454  20 00 00 0E */ subfic r0, r0, 0xe
/* 800D3518 000D0458  7C 00 00 34 */ cntlzw r0, r0
/* 800D351C 000D045C  54 19 DE 3E */ rlwinm r25, r0, 0x1b, 0x18, 0x1f
/* 800D3520 000D0460  38 80 00 22 */ li r4, 0x22
/* 800D3524 000D0464  4B FE EA 49 */ bl daAlink_c_NS_commonProcInit
/* 800D3528 000D0468  7F 83 E3 78 */ mr r3, r28
/* 800D352C 000D046C  88 9F 00 08 */ lbz r4, 8(r31)
/* 800D3530 000D0470  4B FF DF FD */ bl daAlink_c_NS_setCutType
/* 800D3534 000D0474  80 1F 00 04 */ lwz r0, 4(r31)
/* 800D3538 000D0478  90 1C 31 98 */ stw r0, 0x3198(r28)
/* 800D353C 000D047C  88 1F 00 0A */ lbz r0, 0xa(r31)
/* 800D3540 000D0480  B0 1C 30 0C */ sth r0, 0x300c(r28)
/* 800D3544 000D0484  88 1F 00 0B */ lbz r0, 0xb(r31)
/* 800D3548 000D0488  B0 1C 30 0E */ sth r0, 0x300e(r28)
/* 800D354C 000D048C  3B C0 00 00 */ li r30, 0
/* 800D3550 000D0490  2C 1D 00 00 */ cmpwi r29, 0
/* 800D3554 000D0494  40 82 00 0C */ bne lbl_800D3560
/* 800D3558 000D0498  3B 5B 03 8C */ addi r26, r27, 0x38c
/* 800D355C 000D049C  48 00 00 50 */ b lbl_800D35AC
lbl_800D3560:
/* 800D3560 000D04A0  2C 1D 00 01 */ cmpwi r29, 1
/* 800D3564 000D04A4  40 82 00 0C */ bne lbl_800D3570
/* 800D3568 000D04A8  3B 5B 03 B8 */ addi r26, r27, 0x3b8
/* 800D356C 000D04AC  48 00 00 40 */ b lbl_800D35AC
lbl_800D3570:
/* 800D3570 000D04B0  2C 1D 00 02 */ cmpwi r29, 2
/* 800D3574 000D04B4  40 82 00 0C */ bne lbl_800D3580
/* 800D3578 000D04B8  3B 5B 03 E4 */ addi r26, r27, 0x3e4
/* 800D357C 000D04BC  48 00 00 30 */ b lbl_800D35AC
lbl_800D3580:
/* 800D3580 000D04C0  2C 1D 00 03 */ cmpwi r29, 3
/* 800D3584 000D04C4  40 82 00 10 */ bne lbl_800D3594
/* 800D3588 000D04C8  3B 5B 04 10 */ addi r26, r27, 0x410
/* 800D358C 000D04CC  3B C0 00 01 */ li r30, 1
/* 800D3590 000D04D0  48 00 00 1C */ b lbl_800D35AC
lbl_800D3594:
/* 800D3594 000D04D4  2C 1D 00 04 */ cmpwi r29, 4
/* 800D3598 000D04D8  40 82 00 10 */ bne lbl_800D35A8
/* 800D359C 000D04DC  3B 5B 04 3C */ addi r26, r27, 0x43c
/* 800D35A0 000D04E0  3B C0 00 01 */ li r30, 1
/* 800D35A4 000D04E4  48 00 00 08 */ b lbl_800D35AC
lbl_800D35A8:
/* 800D35A8 000D04E8  3B 5B 04 68 */ addi r26, r27, 0x468
lbl_800D35AC:
/* 800D35AC 000D04EC  2C 19 00 00 */ cmpwi r25, 0
/* 800D35B0 000D04F0  41 82 00 0C */ beq lbl_800D35BC
/* 800D35B4 000D04F4  C3 FA 00 1C */ lfs f31, 0x1c(r26)
/* 800D35B8 000D04F8  48 00 00 1C */ b lbl_800D35D4
lbl_800D35BC:
/* 800D35BC 000D04FC  88 1C 05 69 */ lbz r0, 0x569(r28)
/* 800D35C0 000D0500  28 00 00 03 */ cmplwi r0, 3
/* 800D35C4 000D0504  40 82 00 0C */ bne lbl_800D35D0
/* 800D35C8 000D0508  C3 FA 00 28 */ lfs f31, 0x28(r26)
/* 800D35CC 000D050C  48 00 00 08 */ b lbl_800D35D4
lbl_800D35D0:
/* 800D35D0 000D0510  C3 FA 00 08 */ lfs f31, 8(r26)
lbl_800D35D4:
/* 800D35D4 000D0514  7F 83 E3 78 */ mr r3, r28
/* 800D35D8 000D0518  4B FE C7 D9 */ bl daAlink_c_NS_checkZoraWearAbility
/* 800D35DC 000D051C  2C 03 00 00 */ cmpwi r3, 0
/* 800D35E0 000D0520  40 82 00 18 */ bne lbl_800D35F8
/* 800D35E4 000D0524  80 1C 05 70 */ lwz r0, 0x570(r28)
/* 800D35E8 000D0528  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 800D35EC 000D052C  41 82 00 0C */ beq lbl_800D35F8
/* 800D35F0 000D0530  C0 7F 00 0C */ lfs f3, 0xc(r31)
/* 800D35F4 000D0534  48 00 00 08 */ b lbl_800D35FC
lbl_800D35F8:
/* 800D35F8 000D0538  C0 7A 00 0C */ lfs f3, 0xc(r26)
lbl_800D35FC:
/* 800D35FC 000D053C  7F 83 E3 78 */ mr r3, r28
/* 800D3600 000D0540  80 9F 00 00 */ lwz r4, 0(r31)
/* 800D3604 000D0544  C0 3A 00 04 */ lfs f1, 4(r26)
/* 800D3608 000D0548  FC 40 F8 90 */ fmr f2, f31
/* 800D360C 000D054C  A8 BA 00 00 */ lha r5, 0(r26)
/* 800D3610 000D0550  4B FD 99 FD */ bl daAlink_c_NS_setSingleAnime
/* 800D3614 000D0554  C0 1A 00 1C */ lfs f0, 0x1c(r26)
/* 800D3618 000D0558  D0 1C 34 78 */ stfs f0, 0x3478(r28)
/* 800D361C 000D055C  C0 1A 00 20 */ lfs f0, 0x20(r26)
/* 800D3620 000D0560  D0 1C 34 7C */ stfs f0, 0x347c(r28)
/* 800D3624 000D0564  C0 1A 00 18 */ lfs f0, 0x18(r26)
/* 800D3628 000D0568  D0 1C 34 80 */ stfs f0, 0x3480(r28)
/* 800D362C 000D056C  7F 83 E3 78 */ mr r3, r28
/* 800D3630 000D0570  38 80 00 01 */ li r4, 1
/* 800D3634 000D0574  38 A0 00 01 */ li r5, 1
/* 800D3638 000D0578  4B FE 7E 81 */ bl daAlink_c_NS_checkHeavyStateOn
/* 800D363C 000D057C  2C 03 00 00 */ cmpwi r3, 0
/* 800D3640 000D0580  41 82 00 14 */ beq lbl_800D3654
/* 800D3644 000D0584  C0 3C 34 80 */ lfs f1, 0x3480(r28)
/* 800D3648 000D0588  C0 1C 34 34 */ lfs f0, 0x3434(r28)
/* 800D364C 000D058C  EC 01 00 32 */ fmuls f0, f1, f0
/* 800D3650 000D0590  D0 1C 34 80 */ stfs f0, 0x3480(r28)
lbl_800D3654:
/* 800D3654 000D0594  A8 1C 04 E6 */ lha r0, 0x4e6(r28)
/* 800D3658 000D0598  B0 1C 04 DE */ sth r0, 0x4de(r28)
/* 800D365C 000D059C  39 1B 08 34 */ addi r8, r27, 0x834
/* 800D3660 000D05A0  A8 08 00 52 */ lha r0, 0x52(r8)
/* 800D3664 000D05A4  B0 1C 30 7E */ sth r0, 0x307e(r28)
/* 800D3668 000D05A8  88 1C 05 69 */ lbz r0, 0x569(r28)
/* 800D366C 000D05AC  28 00 00 03 */ cmplwi r0, 3
/* 800D3670 000D05B0  40 82 00 44 */ bne lbl_800D36B4
/* 800D3674 000D05B4  C0 1A 00 24 */ lfs f0, 0x24(r26)
/* 800D3678 000D05B8  D0 1C 34 84 */ stfs f0, 0x3484(r28)
/* 800D367C 000D05BC  A8 1A 00 16 */ lha r0, 0x16(r26)
/* 800D3680 000D05C0  B0 1C 30 08 */ sth r0, 0x3008(r28)
/* 800D3684 000D05C4  7F 83 E3 78 */ mr r3, r28
/* 800D3688 000D05C8  38 80 00 00 */ li r4, 0
/* 800D368C 000D05CC  38 A0 00 01 */ li r5, 1
/* 800D3690 000D05D0  88 DF 00 09 */ lbz r6, 9(r31)
/* 800D3694 000D05D4  38 E0 00 02 */ li r7, 2
/* 800D3698 000D05D8  C0 28 00 74 */ lfs f1, 0x74(r8)
/* 800D369C 000D05DC  C0 48 00 78 */ lfs f2, 0x78(r8)
/* 800D36A0 000D05E0  4B FF DF E9 */ bl daAlink_c_NS_setSwordAtParam
/* 800D36A4 000D05E4  3C 60 00 02 */ lis r3, 0x00020002@ha
/* 800D36A8 000D05E8  38 03 00 02 */ addi r0, r3, 0x00020002@l
/* 800D36AC 000D05EC  90 1C 32 D0 */ stw r0, 0x32d0(r28)
/* 800D36B0 000D05F0  48 00 00 60 */ b lbl_800D3710
lbl_800D36B4:
/* 800D36B4 000D05F4  C0 1A 00 10 */ lfs f0, 0x10(r26)
/* 800D36B8 000D05F8  D0 1C 34 84 */ stfs f0, 0x3484(r28)
/* 800D36BC 000D05FC  A8 1A 00 14 */ lha r0, 0x14(r26)
/* 800D36C0 000D0600  B0 1C 30 08 */ sth r0, 0x3008(r28)
/* 800D36C4 000D0604  7F 83 E3 78 */ mr r3, r28
/* 800D36C8 000D0608  38 80 00 01 */ li r4, 1
/* 800D36CC 000D060C  38 A0 00 03 */ li r5, 3
/* 800D36D0 000D0610  88 DF 00 09 */ lbz r6, 9(r31)
/* 800D36D4 000D0614  30 1E FF FF */ addic r0, r30, -1
/* 800D36D8 000D0618  7C E0 F1 10 */ subfe r7, r0, r30
/* 800D36DC 000D061C  38 E7 00 03 */ addi r7, r7, 3
/* 800D36E0 000D0620  C0 28 00 74 */ lfs f1, 0x74(r8)
/* 800D36E4 000D0624  C0 48 00 78 */ lfs f2, 0x78(r8)
/* 800D36E8 000D0628  4B FF DF A1 */ bl daAlink_c_NS_setSwordAtParam
/* 800D36EC 000D062C  2C 1D 00 02 */ cmpwi r29, 2
/* 800D36F0 000D0630  40 82 00 14 */ bne lbl_800D3704
/* 800D36F4 000D0634  3C 60 00 02 */ lis r3, 0x00020004@ha
/* 800D36F8 000D0638  38 03 00 04 */ addi r0, r3, 0x00020004@l
/* 800D36FC 000D063C  90 1C 32 D0 */ stw r0, 0x32d0(r28)
/* 800D3700 000D0640  48 00 00 10 */ b lbl_800D3710
lbl_800D3704:
/* 800D3704 000D0644  3C 60 00 02 */ lis r3, 0x00020003@ha
/* 800D3708 000D0648  38 03 00 03 */ addi r0, r3, 0x00020003@l
/* 800D370C 000D064C  90 1C 32 D0 */ stw r0, 0x32d0(r28)
lbl_800D3710:
/* 800D3710 000D0650  2C 1E 00 00 */ cmpwi r30, 0
/* 800D3714 000D0654  41 82 00 18 */ beq lbl_800D372C
/* 800D3718 000D0658  7F 83 E3 78 */ mr r3, r28
/* 800D371C 000D065C  3C 80 00 01 */ lis r4, 0x0001009A@ha
/* 800D3720 000D0660  38 84 00 9A */ addi r4, r4, 0x0001009A@l
/* 800D3724 000D0664  4B FF EB 61 */ bl daAlink_c_NS_setSwordVoiceSe
/* 800D3728 000D0668  48 00 00 0C */ b lbl_800D3734
lbl_800D372C:
/* 800D372C 000D066C  7F 83 E3 78 */ mr r3, r28
/* 800D3730 000D0670  4B FF EB D5 */ bl daAlink_c_NS_setSwordComboVoice
lbl_800D3734:
/* 800D3734 000D0674  38 00 00 0C */ li r0, 0xc
/* 800D3738 000D0678  98 1C 2F 99 */ stb r0, 0x2f99(r28)
/* 800D373C 000D067C  3C 60 80 42 */ lis r3, lbl_80425544@ha
/* 800D3740 000D0680  C4 03 55 44 */ lfsu f0, lbl_80425544@l(r3)
/* 800D3744 000D0684  D0 1C 35 88 */ stfs f0, 0x3588(r28)
/* 800D3748 000D0688  C0 03 00 04 */ lfs f0, 4(r3)
/* 800D374C 000D068C  D0 1C 35 8C */ stfs f0, 0x358c(r28)
/* 800D3750 000D0690  C0 03 00 08 */ lfs f0, 8(r3)
/* 800D3754 000D0694  D0 1C 35 90 */ stfs f0, 0x3590(r28)
/* 800D3758 000D0698  88 1C 05 68 */ lbz r0, 0x568(r28)
/* 800D375C 000D069C  28 00 00 1A */ cmplwi r0, 0x1a
/* 800D3760 000D06A0  41 82 00 0C */ beq lbl_800D376C
/* 800D3764 000D06A4  28 00 00 20 */ cmplwi r0, 0x20
/* 800D3768 000D06A8  40 82 00 0C */ bne lbl_800D3774
lbl_800D376C:
/* 800D376C 000D06AC  38 00 00 0D */ li r0, 0xd
/* 800D3770 000D06B0  98 1C 2F 99 */ stb r0, 0x2f99(r28)
lbl_800D3774:
/* 800D3774 000D06B4  38 00 00 00 */ li r0, 0
/* 800D3778 000D06B8  B0 1C 30 12 */ sth r0, 0x3012(r28)
/* 800D377C 000D06BC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D3780 000D06C0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D3784 000D06C4  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 800D3788 000D06C8  60 00 80 00 */ ori r0, r0, 0x8000
/* 800D378C 000D06CC  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 800D3790 000D06D0  7F 83 E3 78 */ mr r3, r28
/* 800D3794 000D06D4  48 05 09 B1 */ bl daAlink_c_NS_setCutWaterDropEffect
/* 800D3798 000D06D8  7F 83 E3 78 */ mr r3, r28
/* 800D379C 000D06DC  4B FF F4 61 */ bl daAlink_c_NS_initCutAtnActorSearch
/* 800D37A0 000D06E0  80 7C 27 E0 */ lwz r3, 0x27e0(r28)
/* 800D37A4 000D06E4  38 80 00 00 */ li r4, 0
/* 800D37A8 000D06E8  4B F9 FD 95 */ bl dAttention_c_NS_LockonTarget
/* 800D37AC 000D06EC  28 03 00 00 */ cmplwi r3, 0
/* 800D37B0 000D06F0  41 82 00 28 */ beq lbl_800D37D8
/* 800D37B4 000D06F4  2C 1E 00 00 */ cmpwi r30, 0
/* 800D37B8 000D06F8  41 82 00 20 */ beq lbl_800D37D8
/* 800D37BC 000D06FC  80 7C 27 E0 */ lwz r3, 0x27e0(r28)
/* 800D37C0 000D0700  38 80 00 00 */ li r4, 0
/* 800D37C4 000D0704  4B F9 FD 79 */ bl dAttention_c_NS_LockonTarget
/* 800D37C8 000D0708  7C 64 1B 78 */ mr r4, r3
/* 800D37CC 000D070C  38 7C 28 0C */ addi r3, r28, 0x280c
/* 800D37D0 000D0710  48 08 B4 E9 */ bl daPy_actorKeep_c_NS_setData
/* 800D37D4 000D0714  48 00 00 0C */ b lbl_800D37E0
lbl_800D37D8:
/* 800D37D8 000D0718  38 7C 28 0C */ addi r3, r28, 0x280c
/* 800D37DC 000D071C  48 08 B5 21 */ bl daPy_actorKeep_c_NS_clearData
lbl_800D37E0:
/* 800D37E0 000D0720  88 1C 05 68 */ lbz r0, 0x568(r28)
/* 800D37E4 000D0724  28 00 00 1A */ cmplwi r0, 0x1a
/* 800D37E8 000D0728  41 82 00 0C */ beq lbl_800D37F4
/* 800D37EC 000D072C  28 00 00 1F */ cmplwi r0, 0x1f
/* 800D37F0 000D0730  40 82 00 10 */ bne lbl_800D3800
lbl_800D37F4:
/* 800D37F4 000D0734  38 00 00 01 */ li r0, 1
/* 800D37F8 000D0738  98 1C 2F D0 */ stb r0, 0x2fd0(r28)
/* 800D37FC 000D073C  48 00 00 0C */ b lbl_800D3808
lbl_800D3800:
/* 800D3800 000D0740  38 00 00 00 */ li r0, 0
/* 800D3804 000D0744  98 1C 2F D0 */ stb r0, 0x2fd0(r28)
lbl_800D3808:
/* 800D3808 000D0748  38 60 00 01 */ li r3, 1
/* 800D380C 000D074C  E3 E1 00 38 */ psq_l f31, 56(r1), 0, 0
/* 800D3810 000D0750  CB E1 00 30 */ lfd f31, 0x30(r1)
/* 800D3814 000D0754  39 61 00 30 */ addi r11, r1, 0x30
/* 800D3818 000D0758  48 28 EA 01 */ bl _restgpr_25
/* 800D381C 000D075C  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800D3820 000D0760  7C 08 03 A6 */ mtlr r0
/* 800D3824 000D0764  38 21 00 40 */ addi r1, r1, 0x40
/* 800D3828 000D0768  4E 80 00 20 */ blr