/* 800F571C 000F265C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800F5720 000F2660  7C 08 02 A6 */ mflr r0
/* 800F5724 000F2664  90 01 00 34 */ stw r0, 0x34(r1)
/* 800F5728 000F2668  DB E1 00 20 */ stfd f31, 0x20(r1)
/* 800F572C 000F266C  F3 E1 00 28 */ psq_st f31, 40(r1), 0, 0
/* 800F5730 000F2670  39 61 00 20 */ addi r11, r1, 0x20
/* 800F5734 000F2674  48 26 CA A1 */ bl _savegpr_27
/* 800F5738 000F2678  7C 7C 1B 78 */ mr r28, r3
/* 800F573C 000F267C  7C 9D 23 79 */ or. r29, r4, r4
/* 800F5740 000F2680  83 C3 28 18 */ lwz r30, 0x2818(r3)
/* 800F5744 000F2684  38 00 FF FE */ li r0, -2
/* 800F5748 000F2688  90 03 31 98 */ stw r0, 0x3198(r3)
/* 800F574C 000F268C  40 80 01 AC */ bge lbl_800F58F8
/* 800F5750 000F2690  C0 3C 33 AC */ lfs f1, 0x33ac(r28)
/* 800F5754 000F2694  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800F5758 000F2698  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F575C 000F269C  40 81 01 44 */ ble lbl_800F58A0
/* 800F5760 000F26A0  A8 7C 04 E6 */ lha r3, 0x4e6(r28)
/* 800F5764 000F26A4  A8 1C 2F E2 */ lha r0, 0x2fe2(r28)
/* 800F5768 000F26A8  7C 03 00 50 */ subf r0, r3, r0
/* 800F576C 000F26AC  7C 1F 07 34 */ extsh r31, r0
/* 800F5770 000F26B0  7F E3 FB 78 */ mr r3, r31
/* 800F5774 000F26B4  48 26 F9 5D */ bl func_803650D0
/* 800F5778 000F26B8  38 00 68 00 */ li r0, 0x6800
/* 800F577C 000F26BC  7C 65 FE 70 */ srawi r5, r3, 0x1f
/* 800F5780 000F26C0  54 04 0F FE */ srwi r4, r0, 0x1f
/* 800F5784 000F26C4  7C 00 18 10 */ subfc r0, r0, r3
/* 800F5788 000F26C8  7C 85 21 14 */ adde r4, r5, r4
/* 800F578C 000F26CC  2C 03 00 40 */ cmpwi r3, 0x40
/* 800F5790 000F26D0  41 80 00 0C */ blt lbl_800F579C
/* 800F5794 000F26D4  2C 03 7F 80 */ cmpwi r3, 0x7f80
/* 800F5798 000F26D8  40 81 00 54 */ ble lbl_800F57EC
lbl_800F579C:
/* 800F579C 000F26DC  2C 1D FF FD */ cmpwi r29, -3
/* 800F57A0 000F26E0  40 82 00 20 */ bne lbl_800F57C0
/* 800F57A4 000F26E4  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800F57A8 000F26E8  2C 00 00 00 */ cmpwi r0, 0
/* 800F57AC 000F26EC  40 82 00 0C */ bne lbl_800F57B8
/* 800F57B0 000F26F0  38 00 00 02 */ li r0, 2
/* 800F57B4 000F26F4  48 00 00 4C */ b lbl_800F5800
lbl_800F57B8:
/* 800F57B8 000F26F8  38 00 00 03 */ li r0, 3
/* 800F57BC 000F26FC  48 00 00 44 */ b lbl_800F5800
lbl_800F57C0:
/* 800F57C0 000F2700  2C 1D FF FE */ cmpwi r29, -2
/* 800F57C4 000F2704  40 82 00 0C */ bne lbl_800F57D0
/* 800F57C8 000F2708  38 00 FF FD */ li r0, -3
/* 800F57CC 000F270C  90 1C 31 98 */ stw r0, 0x3198(r28)
lbl_800F57D0:
/* 800F57D0 000F2710  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800F57D4 000F2714  2C 00 00 00 */ cmpwi r0, 0
/* 800F57D8 000F2718  40 82 00 0C */ bne lbl_800F57E4
/* 800F57DC 000F271C  38 00 00 03 */ li r0, 3
/* 800F57E0 000F2720  48 00 00 20 */ b lbl_800F5800
lbl_800F57E4:
/* 800F57E4 000F2724  38 00 00 02 */ li r0, 2
/* 800F57E8 000F2728  48 00 00 18 */ b lbl_800F5800
lbl_800F57EC:
/* 800F57EC 000F272C  7F E0 07 35 */ extsh. r0, r31
/* 800F57F0 000F2730  40 81 00 0C */ ble lbl_800F57FC
/* 800F57F4 000F2734  38 00 00 02 */ li r0, 2
/* 800F57F8 000F2738  48 00 00 08 */ b lbl_800F5800
lbl_800F57FC:
/* 800F57FC 000F273C  38 00 00 03 */ li r0, 3
lbl_800F5800:
/* 800F5800 000F2740  2C 04 00 01 */ cmpwi r4, 1
/* 800F5804 000F2744  40 82 00 50 */ bne lbl_800F5854
/* 800F5808 000F2748  20 00 00 02 */ subfic r0, r0, 2
/* 800F580C 000F274C  7C 00 00 34 */ cntlzw r0, r0
/* 800F5810 000F2750  54 03 D9 7E */ srwi r3, r0, 5
/* 800F5814 000F2754  38 03 00 DD */ addi r0, r3, 0xdd
/* 800F5818 000F2758  7C 1F 03 78 */ mr r31, r0
/* 800F581C 000F275C  2C 00 00 DE */ cmpwi r0, 0xde
/* 800F5820 000F2760  40 82 00 10 */ bne lbl_800F5830
/* 800F5824 000F2764  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800F5828 000F2768  2C 00 00 00 */ cmpwi r0, 0
/* 800F582C 000F276C  41 82 00 18 */ beq lbl_800F5844
lbl_800F5830:
/* 800F5830 000F2770  2C 1F 00 DD */ cmpwi r31, 0xdd
/* 800F5834 000F2774  40 82 00 C8 */ bne lbl_800F58FC
/* 800F5838 000F2778  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800F583C 000F277C  2C 00 00 01 */ cmpwi r0, 1
/* 800F5840 000F2780  40 82 00 BC */ bne lbl_800F58FC
lbl_800F5844:
/* 800F5844 000F2784  7F 83 E3 78 */ mr r3, r28
/* 800F5848 000F2788  7F E4 FB 78 */ mr r4, r31
/* 800F584C 000F278C  48 00 04 B9 */ bl daAlink_c_NS_procCanoePaddleShiftInit
/* 800F5850 000F2790  48 00 01 AC */ b lbl_800F59FC
lbl_800F5854:
/* 800F5854 000F2794  20 00 00 02 */ subfic r0, r0, 2
/* 800F5858 000F2798  7C 00 00 34 */ cntlzw r0, r0
/* 800F585C 000F279C  54 03 D9 7E */ srwi r3, r0, 5
/* 800F5860 000F27A0  38 03 00 DB */ addi r0, r3, 0xdb
/* 800F5864 000F27A4  7C 1F 03 78 */ mr r31, r0
/* 800F5868 000F27A8  2C 00 00 DC */ cmpwi r0, 0xdc
/* 800F586C 000F27AC  40 82 00 10 */ bne lbl_800F587C
/* 800F5870 000F27B0  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800F5874 000F27B4  2C 00 00 00 */ cmpwi r0, 0
/* 800F5878 000F27B8  41 82 00 18 */ beq lbl_800F5890
lbl_800F587C:
/* 800F587C 000F27BC  2C 1F 00 DB */ cmpwi r31, 0xdb
/* 800F5880 000F27C0  40 82 00 7C */ bne lbl_800F58FC
/* 800F5884 000F27C4  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800F5888 000F27C8  2C 00 00 01 */ cmpwi r0, 1
/* 800F588C 000F27CC  40 82 00 70 */ bne lbl_800F58FC
lbl_800F5890:
/* 800F5890 000F27D0  7F 83 E3 78 */ mr r3, r28
/* 800F5894 000F27D4  7F E4 FB 78 */ mr r4, r31
/* 800F5898 000F27D8  48 00 04 6D */ bl daAlink_c_NS_procCanoePaddleShiftInit
/* 800F589C 000F27DC  48 00 01 60 */ b lbl_800F59FC
lbl_800F58A0:
/* 800F58A0 000F27E0  2C 1D FF FD */ cmpwi r29, -3
/* 800F58A4 000F27E4  40 82 00 28 */ bne lbl_800F58CC
/* 800F58A8 000F27E8  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800F58AC 000F27EC  2C 00 00 01 */ cmpwi r0, 1
/* 800F58B0 000F27F0  40 82 00 10 */ bne lbl_800F58C0
/* 800F58B4 000F27F4  38 80 00 DB */ li r4, 0xdb
/* 800F58B8 000F27F8  48 00 04 4D */ bl daAlink_c_NS_procCanoePaddleShiftInit
/* 800F58BC 000F27FC  48 00 01 40 */ b lbl_800F59FC
lbl_800F58C0:
/* 800F58C0 000F2800  38 80 00 DC */ li r4, 0xdc
/* 800F58C4 000F2804  48 00 04 41 */ bl daAlink_c_NS_procCanoePaddleShiftInit
/* 800F58C8 000F2808  48 00 01 34 */ b lbl_800F59FC
lbl_800F58CC:
/* 800F58CC 000F280C  2C 1D FF FE */ cmpwi r29, -2
/* 800F58D0 000F2810  40 82 00 0C */ bne lbl_800F58DC
/* 800F58D4 000F2814  38 00 FF FD */ li r0, -3
/* 800F58D8 000F2818  90 1C 31 98 */ stw r0, 0x3198(r28)
lbl_800F58DC:
/* 800F58DC 000F281C  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800F58E0 000F2820  2C 00 00 01 */ cmpwi r0, 1
/* 800F58E4 000F2824  40 82 00 0C */ bne lbl_800F58F0
/* 800F58E8 000F2828  3B E0 00 DC */ li r31, 0xdc
/* 800F58EC 000F282C  48 00 00 10 */ b lbl_800F58FC
lbl_800F58F0:
/* 800F58F0 000F2830  3B E0 00 DB */ li r31, 0xdb
/* 800F58F4 000F2834  48 00 00 08 */ b lbl_800F58FC
lbl_800F58F8:
/* 800F58F8 000F2838  7F BF EB 78 */ mr r31, r29
lbl_800F58FC:
/* 800F58FC 000F283C  7F 83 E3 78 */ mr r3, r28
/* 800F5900 000F2840  38 80 00 90 */ li r4, 0x90
/* 800F5904 000F2844  4B FC C6 69 */ bl daAlink_c_NS_commonProcInit
/* 800F5908 000F2848  3C 60 80 39 */ lis r3, lbl_8038E610@ha
/* 800F590C 000F284C  38 63 E6 10 */ addi r3, r3, lbl_8038E610@l
/* 800F5910 000F2850  C3 E3 00 1C */ lfs f31, 0x1c(r3)
/* 800F5914 000F2854  3B 60 00 00 */ li r27, 0
/* 800F5918 000F2858  2C 1F 00 DD */ cmpwi r31, 0xdd
/* 800F591C 000F285C  41 82 00 0C */ beq lbl_800F5928
/* 800F5920 000F2860  2C 1F 00 DE */ cmpwi r31, 0xde
/* 800F5924 000F2864  40 82 00 4C */ bne lbl_800F5970
lbl_800F5928:
/* 800F5928 000F2868  38 00 00 01 */ li r0, 1
/* 800F592C 000F286C  B0 1C 30 0E */ sth r0, 0x300e(r28)
/* 800F5930 000F2870  C0 7E 05 2C */ lfs f3, 0x52c(r30)
/* 800F5934 000F2874  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800F5938 000F2878  FC 20 F8 50 */ fneg f1, f31
/* 800F593C 000F287C  3C 60 80 39 */ lis r3, lbl_8038E610@ha
/* 800F5940 000F2880  38 63 E6 10 */ addi r3, r3, lbl_8038E610@l
/* 800F5944 000F2884  C0 03 00 34 */ lfs f0, 0x34(r3)
/* 800F5948 000F2888  EC 01 00 32 */ fmuls f0, f1, f0
/* 800F594C 000F288C  EC 02 00 32 */ fmuls f0, f2, f0
/* 800F5950 000F2890  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800F5954 000F2894  40 81 00 08 */ ble lbl_800F595C
/* 800F5958 000F2898  3B 60 00 01 */ li r27, 1
lbl_800F595C:
/* 800F595C 000F289C  C0 02 94 28 */ lfs f0, lbl_80452E28-_SDA2_BASE_(r2)
/* 800F5960 000F28A0  D0 1C 34 78 */ stfs f0, 0x3478(r28)
/* 800F5964 000F28A4  38 00 00 00 */ li r0, 0
/* 800F5968 000F28A8  B0 1C 30 08 */ sth r0, 0x3008(r28)
/* 800F596C 000F28AC  48 00 00 54 */ b lbl_800F59C0
lbl_800F5970:
/* 800F5970 000F28B0  38 00 00 00 */ li r0, 0
/* 800F5974 000F28B4  B0 1C 30 0E */ sth r0, 0x300e(r28)
/* 800F5978 000F28B8  7F 83 E3 78 */ mr r3, r28
/* 800F597C 000F28BC  4B FF E2 9D */ bl daAlink_c_NS_getCanoeSpeedRate
/* 800F5980 000F28C0  EC 3F 00 72 */ fmuls f1, f31, f1
/* 800F5984 000F28C4  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 800F5988 000F28C8  EC 20 00 72 */ fmuls f1, f0, f1
/* 800F598C 000F28CC  C0 1E 05 2C */ lfs f0, 0x52c(r30)
/* 800F5990 000F28D0  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800F5994 000F28D4  40 80 00 08 */ bge lbl_800F599C
/* 800F5998 000F28D8  3B 60 00 01 */ li r27, 1
lbl_800F599C:
/* 800F599C 000F28DC  C0 02 93 28 */ lfs f0, lbl_80452D28-_SDA2_BASE_(r2)
/* 800F59A0 000F28E0  D0 1C 34 78 */ stfs f0, 0x3478(r28)
/* 800F59A4 000F28E4  2C 1D FF FF */ cmpwi r29, -1
/* 800F59A8 000F28E8  40 82 00 10 */ bne lbl_800F59B8
/* 800F59AC 000F28EC  38 00 00 01 */ li r0, 1
/* 800F59B0 000F28F0  B0 1C 30 08 */ sth r0, 0x3008(r28)
/* 800F59B4 000F28F4  48 00 00 0C */ b lbl_800F59C0
lbl_800F59B8:
/* 800F59B8 000F28F8  38 00 00 00 */ li r0, 0
/* 800F59BC 000F28FC  B0 1C 30 08 */ sth r0, 0x3008(r28)
lbl_800F59C0:
/* 800F59C0 000F2900  2C 1B 00 00 */ cmpwi r27, 0
/* 800F59C4 000F2904  41 82 00 10 */ beq lbl_800F59D4
/* 800F59C8 000F2908  3C 60 80 39 */ lis r3, lbl_8038E610@ha
/* 800F59CC 000F290C  38 63 E6 10 */ addi r3, r3, lbl_8038E610@l
/* 800F59D0 000F2910  C3 E3 00 30 */ lfs f31, 0x30(r3)
lbl_800F59D4:
/* 800F59D4 000F2914  7F 83 E3 78 */ mr r3, r28
/* 800F59D8 000F2918  7F E4 FB 78 */ mr r4, r31
/* 800F59DC 000F291C  FC 20 F8 90 */ fmr f1, f31
/* 800F59E0 000F2920  C0 42 92 C0 */ lfs f2, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F59E4 000F2924  38 A0 00 23 */ li r5, 0x23
/* 800F59E8 000F2928  C0 62 92 C4 */ lfs f3, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800F59EC 000F292C  4B FB 76 21 */ bl daAlink_c_NS_setSingleAnime
/* 800F59F0 000F2930  7F 83 E3 78 */ mr r3, r28
/* 800F59F4 000F2934  4B FF EB A9 */ bl daAlink_c_NS_setSyncCanoePos
/* 800F59F8 000F2938  38 60 00 01 */ li r3, 1
lbl_800F59FC:
/* 800F59FC 000F293C  E3 E1 00 28 */ psq_l f31, 40(r1), 0, 0
/* 800F5A00 000F2940  CB E1 00 20 */ lfd f31, 0x20(r1)
/* 800F5A04 000F2944  39 61 00 20 */ addi r11, r1, 0x20
/* 800F5A08 000F2948  48 26 C8 19 */ bl _restgpr_27
/* 800F5A0C 000F294C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800F5A10 000F2950  7C 08 03 A6 */ mtlr r0
/* 800F5A14 000F2954  38 21 00 30 */ addi r1, r1, 0x30
/* 800F5A18 000F2958  4E 80 00 20 */ blr