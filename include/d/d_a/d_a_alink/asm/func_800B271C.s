/* 800B271C 000AF65C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800B2720 000AF660  7C 08 02 A6 */ mflr r0
/* 800B2724 000AF664  90 01 00 24 */ stw r0, 0x24(r1)
/* 800B2728 000AF668  39 61 00 20 */ addi r11, r1, 0x20
/* 800B272C 000AF66C  48 2A FA B1 */ bl _savegpr_29
/* 800B2730 000AF670  7C 7E 1B 78 */ mr r30, r3
/* 800B2734 000AF674  3B E0 00 00 */ li r31, 0
/* 800B2738 000AF678  88 03 2F 8E */ lbz r0, 0x2f8e(r3)
/* 800B273C 000AF67C  98 03 2F 8F */ stb r0, 0x2f8f(r3)
/* 800B2740 000AF680  38 00 00 00 */ li r0, 0
/* 800B2744 000AF684  98 03 2F 8D */ stb r0, 0x2f8d(r3)
/* 800B2748 000AF688  98 03 2F 8E */ stb r0, 0x2f8e(r3)
/* 800B274C 000AF68C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B2750 000AF690  D0 03 34 34 */ stfs f0, 0x3434(r3)
/* 800B2754 000AF694  48 06 34 CD */ bl daAlink_c_NS_checkEventRun
/* 800B2758 000AF698  2C 03 00 00 */ cmpwi r3, 0
/* 800B275C 000AF69C  41 82 01 20 */ beq lbl_800B287C
/* 800B2760 000AF6A0  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 800B2764 000AF6A4  28 00 00 BA */ cmplwi r0, 0xba
/* 800B2768 000AF6A8  41 82 01 14 */ beq lbl_800B287C
/* 800B276C 000AF6AC  28 00 01 33 */ cmplwi r0, 0x133
/* 800B2770 000AF6B0  41 82 01 0C */ beq lbl_800B287C
/* 800B2774 000AF6B4  28 00 00 C0 */ cmplwi r0, 0xc0
/* 800B2778 000AF6B8  41 82 01 04 */ beq lbl_800B287C
/* 800B277C 000AF6BC  28 00 01 3C */ cmplwi r0, 0x13c
/* 800B2780 000AF6C0  41 82 00 FC */ beq lbl_800B287C
/* 800B2784 000AF6C4  28 00 01 3D */ cmplwi r0, 0x13d
/* 800B2788 000AF6C8  41 82 00 F4 */ beq lbl_800B287C
/* 800B278C 000AF6CC  28 00 01 4D */ cmplwi r0, 0x14d
/* 800B2790 000AF6D0  40 82 00 10 */ bne lbl_800B27A0
/* 800B2794 000AF6D4  A8 1E 30 14 */ lha r0, 0x3014(r30)
/* 800B2798 000AF6D8  2C 00 00 00 */ cmpwi r0, 0
/* 800B279C 000AF6DC  40 82 00 E0 */ bne lbl_800B287C
lbl_800B27A0:
/* 800B27A0 000AF6E0  83 BE 06 14 */ lwz r29, 0x614(r30)
/* 800B27A4 000AF6E4  7F C3 F3 78 */ mr r3, r30
/* 800B27A8 000AF6E8  7F A4 EB 78 */ mr r4, r29
/* 800B27AC 000AF6EC  48 06 46 B5 */ bl daAlink_c_NS_checkDemoMoveMode
/* 800B27B0 000AF6F0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B27B4 000AF6F4  41 82 00 30 */ beq lbl_800B27E4
/* 800B27B8 000AF6F8  80 6D 88 A0 */ lwz r3, lbl_80450E20-_SDA_BASE_(r13)
/* 800B27BC 000AF6FC  88 9E 04 98 */ lbz r4, 0x498(r30)
/* 800B27C0 000AF700  4B F8 68 C9 */ bl dDemo_object_c_NS_getActor
/* 800B27C4 000AF704  28 03 00 00 */ cmplwi r3, 0
/* 800B27C8 000AF708  41 82 00 10 */ beq lbl_800B27D8
/* 800B27CC 000AF70C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B27D0 000AF710  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
/* 800B27D4 000AF714  48 00 00 94 */ b lbl_800B2868
lbl_800B27D8:
/* 800B27D8 000AF718  C0 1E 06 18 */ lfs f0, 0x618(r30)
/* 800B27DC 000AF71C  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
/* 800B27E0 000AF720  48 00 00 88 */ b lbl_800B2868
lbl_800B27E4:
/* 800B27E4 000AF724  28 1D 00 0E */ cmplwi r29, 0xe
/* 800B27E8 000AF728  41 82 00 14 */ beq lbl_800B27FC
/* 800B27EC 000AF72C  28 1D 00 1A */ cmplwi r29, 0x1a
/* 800B27F0 000AF730  41 82 00 0C */ beq lbl_800B27FC
/* 800B27F4 000AF734  28 1D 00 41 */ cmplwi r29, 0x41
/* 800B27F8 000AF738  40 82 00 68 */ bne lbl_800B2860
lbl_800B27FC:
/* 800B27FC 000AF73C  28 1D 00 1A */ cmplwi r29, 0x1a
/* 800B2800 000AF740  40 82 00 4C */ bne lbl_800B284C
/* 800B2804 000AF744  C0 1E 06 18 */ lfs f0, 0x618(r30)
/* 800B2808 000AF748  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
/* 800B280C 000AF74C  7F C3 F3 78 */ mr r3, r30
/* 800B2810 000AF750  48 00 C1 C5 */ bl daAlink_c_NS_getSceneExitMoveAngle
/* 800B2814 000AF754  B0 7E 06 06 */ sth r3, 0x606(r30)
/* 800B2818 000AF758  7F C3 F3 78 */ mr r3, r30
/* 800B281C 000AF75C  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800B2820 000AF760  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800B2824 000AF764  7D 89 03 A6 */ mtctr r12
/* 800B2828 000AF768  4E 80 04 21 */ bctrl
/* 800B282C 000AF76C  28 03 00 00 */ cmplwi r3, 0
/* 800B2830 000AF770  41 82 00 24 */ beq lbl_800B2854
/* 800B2834 000AF774  A8 1E 06 06 */ lha r0, 0x606(r30)
/* 800B2838 000AF778  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B283C 000AF77C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B2840 000AF780  80 63 5D B8 */ lwz r3, 0x5db8(r3)
/* 800B2844 000AF784  B0 03 16 FC */ sth r0, 0x16fc(r3)
/* 800B2848 000AF788  48 00 00 0C */ b lbl_800B2854
lbl_800B284C:
/* 800B284C 000AF78C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B2850 000AF790  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
lbl_800B2854:
/* 800B2854 000AF794  88 1E 2F 8F */ lbz r0, 0x2f8f(r30)
/* 800B2858 000AF798  98 1E 2F 8E */ stb r0, 0x2f8e(r30)
/* 800B285C 000AF79C  48 00 00 0C */ b lbl_800B2868
lbl_800B2860:
/* 800B2860 000AF7A0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B2864 000AF7A4  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
lbl_800B2868:
/* 800B2868 000AF7A8  A8 1E 06 06 */ lha r0, 0x606(r30)
/* 800B286C 000AF7AC  B0 1E 2F E2 */ sth r0, 0x2fe2(r30)
/* 800B2870 000AF7B0  C0 1E 33 A8 */ lfs f0, 0x33a8(r30)
/* 800B2874 000AF7B4  D0 1E 33 AC */ stfs f0, 0x33ac(r30)
/* 800B2878 000AF7B8  48 00 05 48 */ b lbl_800B2DC0
lbl_800B287C:
/* 800B287C 000AF7BC  7F C3 F3 78 */ mr r3, r30
/* 800B2880 000AF7C0  48 06 64 19 */ bl daAlink_c_NS_checkDeadHP
/* 800B2884 000AF7C4  2C 03 00 00 */ cmpwi r3, 0
/* 800B2888 000AF7C8  40 82 00 18 */ bne lbl_800B28A0
/* 800B288C 000AF7CC  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 800B2890 000AF7D0  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 800B2894 000AF7D4  88 03 00 C1 */ lbz r0, 0xc1(r3)
/* 800B2898 000AF7D8  28 00 00 01 */ cmplwi r0, 1
/* 800B289C 000AF7DC  40 82 00 20 */ bne lbl_800B28BC
lbl_800B28A0:
/* 800B28A0 000AF7E0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B28A4 000AF7E4  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
/* 800B28A8 000AF7E8  D0 1E 33 AC */ stfs f0, 0x33ac(r30)
/* 800B28AC 000AF7EC  38 00 00 00 */ li r0, 0
/* 800B28B0 000AF7F0  B0 1E 2F E0 */ sth r0, 0x2fe0(r30)
/* 800B28B4 000AF7F4  B0 1E 2F E2 */ sth r0, 0x2fe2(r30)
/* 800B28B8 000AF7F8  48 00 05 08 */ b lbl_800B2DC0
lbl_800B28BC:
/* 800B28BC 000AF7FC  7F C3 F3 78 */ mr r3, r30
/* 800B28C0 000AF800  48 08 16 31 */ bl daAlink_c_NS_checkMidnaLockJumpPoint
/* 800B28C4 000AF804  28 03 00 00 */ cmplwi r3, 0
/* 800B28C8 000AF808  41 82 00 50 */ beq lbl_800B2918
/* 800B28CC 000AF80C  80 6D 8A 98 */ lwz r3, lbl_80451018-_SDA_BASE_(r13)
/* 800B28D0 000AF810  80 03 08 90 */ lwz r0, 0x890(r3)
/* 800B28D4 000AF814  54 00 04 63 */ rlwinm. r0, r0, 0, 0x11, 0x11
/* 800B28D8 000AF818  41 82 00 40 */ beq lbl_800B2918
/* 800B28DC 000AF81C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B28E0 000AF820  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
/* 800B28E4 000AF824  D0 1E 33 AC */ stfs f0, 0x33ac(r30)
/* 800B28E8 000AF828  38 00 00 00 */ li r0, 0
/* 800B28EC 000AF82C  B0 1E 2F E0 */ sth r0, 0x2fe0(r30)
/* 800B28F0 000AF830  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B28F4 000AF834  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B28F8 000AF838  98 03 5E B8 */ stb r0, 0x5eb8(r3)
/* 800B28FC 000AF83C  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800B2900 000AF840  60 00 00 80 */ ori r0, r0, 0x80
/* 800B2904 000AF844  90 1E 05 78 */ stw r0, 0x578(r30)
/* 800B2908 000AF848  3B E0 00 01 */ li r31, 1
/* 800B290C 000AF84C  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800B2910 000AF850  B0 1E 2F E4 */ sth r0, 0x2fe4(r30)
/* 800B2914 000AF854  48 00 04 AC */ b lbl_800B2DC0
lbl_800B2918:
/* 800B2918 000AF858  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800B291C 000AF85C  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800B2920 000AF860  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B2924 000AF864  41 81 00 0C */ bgt lbl_800B2930
/* 800B2928 000AF868  38 00 00 00 */ li r0, 0
/* 800B292C 000AF86C  98 1E 2F B9 */ stb r0, 0x2fb9(r30)
lbl_800B2930:
/* 800B2930 000AF870  3B A0 00 00 */ li r29, 0
/* 800B2934 000AF874  7F C3 F3 78 */ mr r3, r30
/* 800B2938 000AF878  48 04 14 21 */ bl daAlink_c_NS_checkFishingRodAndLureItem
/* 800B293C 000AF87C  2C 03 00 00 */ cmpwi r3, 0
/* 800B2940 000AF880  41 82 00 3C */ beq lbl_800B297C
/* 800B2944 000AF884  80 1E 28 28 */ lwz r0, 0x2828(r30)
/* 800B2948 000AF888  28 00 00 00 */ cmplwi r0, 0
/* 800B294C 000AF88C  41 82 00 30 */ beq lbl_800B297C
/* 800B2950 000AF890  7F C3 F3 78 */ mr r3, r30
/* 800B2954 000AF894  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800B2958 000AF898  81 8C 01 90 */ lwz r12, 0x190(r12)
/* 800B295C 000AF89C  7D 89 03 A6 */ mtctr r12
/* 800B2960 000AF8A0  4E 80 04 21 */ bctrl
/* 800B2964 000AF8A4  28 03 00 00 */ cmplwi r3, 0
/* 800B2968 000AF8A8  40 82 00 10 */ bne lbl_800B2978
/* 800B296C 000AF8AC  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 800B2970 000AF8B0  28 00 00 A2 */ cmplwi r0, 0xa2
/* 800B2974 000AF8B4  40 82 00 08 */ bne lbl_800B297C
lbl_800B2978:
/* 800B2978 000AF8B8  3B A0 00 01 */ li r29, 1
lbl_800B297C:
/* 800B297C 000AF8BC  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 800B2980 000AF8C0  41 82 00 4C */ beq lbl_800B29CC
/* 800B2984 000AF8C4  80 7E 28 28 */ lwz r3, 0x2828(r30)
/* 800B2988 000AF8C8  C0 03 14 C8 */ lfs f0, 0x14c8(r3)
/* 800B298C 000AF8CC  EC 20 00 32 */ fmuls f1, f0, f0
/* 800B2990 000AF8D0  C0 03 14 CC */ lfs f0, 0x14cc(r3)
/* 800B2994 000AF8D4  EC 00 00 32 */ fmuls f0, f0, f0
/* 800B2998 000AF8D8  EC 21 00 2A */ fadds f1, f1, f0
/* 800B299C 000AF8DC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B29A0 000AF8E0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B29A4 000AF8E4  40 81 00 0C */ ble lbl_800B29B0
/* 800B29A8 000AF8E8  FC 00 08 34 */ frsqrte f0, f1
/* 800B29AC 000AF8EC  EC 20 00 72 */ fmuls f1, f0, f1
lbl_800B29B0:
/* 800B29B0 000AF8F0  D0 3E 33 A8 */ stfs f1, 0x33a8(r30)
/* 800B29B4 000AF8F4  C0 03 14 C8 */ lfs f0, 0x14c8(r3)
/* 800B29B8 000AF8F8  FC 20 00 50 */ fneg f1, f0
/* 800B29BC 000AF8FC  C0 43 14 CC */ lfs f2, 0x14cc(r3)
/* 800B29C0 000AF900  48 1B 4C B5 */ bl cM_atan2s__Fff
/* 800B29C4 000AF904  B0 7E 2F E0 */ sth r3, 0x2fe0(r30)
/* 800B29C8 000AF908  48 00 00 24 */ b lbl_800B29EC
lbl_800B29CC:
/* 800B29CC 000AF90C  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 800B29D0 000AF910  38 63 D2 E8 */ addi r3, r3, m_cpadInfo@l
/* 800B29D4 000AF914  C0 03 00 08 */ lfs f0, 8(r3)
/* 800B29D8 000AF918  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
/* 800B29DC 000AF91C  A8 63 00 0C */ lha r3, 0xc(r3)
/* 800B29E0 000AF920  3C 63 00 01 */ addis r3, r3, 1
/* 800B29E4 000AF924  38 03 80 00 */ addi r0, r3, -32768
/* 800B29E8 000AF928  B0 1E 2F E0 */ sth r0, 0x2fe0(r30)
lbl_800B29EC:
/* 800B29EC 000AF92C  C0 1E 33 A8 */ lfs f0, 0x33a8(r30)
/* 800B29F0 000AF930  D0 1E 33 AC */ stfs f0, 0x33ac(r30)
/* 800B29F4 000AF934  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B29F8 000AF938  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B29FC 000AF93C  80 1E 31 7C */ lwz r0, 0x317c(r30)
/* 800B2A00 000AF940  1C 00 00 38 */ mulli r0, r0, 0x38
/* 800B2A04 000AF944  7C 63 02 14 */ add r3, r3, r0
/* 800B2A08 000AF948  80 63 5D 74 */ lwz r3, 0x5d74(r3)
/* 800B2A0C 000AF94C  48 0C EC 09 */ bl dCam_getControledAngleY
/* 800B2A10 000AF950  A8 1E 2F E0 */ lha r0, 0x2fe0(r30)
/* 800B2A14 000AF954  7C 00 1A 14 */ add r0, r0, r3
/* 800B2A18 000AF958  B0 1E 2F E2 */ sth r0, 0x2fe2(r30)
/* 800B2A1C 000AF95C  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B2A20 000AF960  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B2A24 000AF964  41 82 00 B0 */ beq lbl_800B2AD4
/* 800B2A28 000AF968  88 1E 2F B9 */ lbz r0, 0x2fb9(r30)
/* 800B2A2C 000AF96C  28 00 00 01 */ cmplwi r0, 1
/* 800B2A30 000AF970  41 82 00 20 */ beq lbl_800B2A50
/* 800B2A34 000AF974  28 00 00 00 */ cmplwi r0, 0
/* 800B2A38 000AF978  40 82 00 24 */ bne lbl_800B2A5C
/* 800B2A3C 000AF97C  A8 1E 31 14 */ lha r0, 0x3114(r30)
/* 800B2A40 000AF980  2C 00 80 00 */ cmpwi r0, -32768
/* 800B2A44 000AF984  41 82 00 18 */ beq lbl_800B2A5C
/* 800B2A48 000AF988  2C 00 60 00 */ cmpwi r0, 0x6000
/* 800B2A4C 000AF98C  41 81 00 10 */ bgt lbl_800B2A5C
lbl_800B2A50:
/* 800B2A50 000AF990  38 00 00 01 */ li r0, 1
/* 800B2A54 000AF994  98 1E 2F B9 */ stb r0, 0x2fb9(r30)
/* 800B2A58 000AF998  48 00 00 0C */ b lbl_800B2A64
lbl_800B2A5C:
/* 800B2A5C 000AF99C  38 00 00 02 */ li r0, 2
/* 800B2A60 000AF9A0  98 1E 2F B9 */ stb r0, 0x2fb9(r30)
lbl_800B2A64:
/* 800B2A64 000AF9A4  88 BE 2F B9 */ lbz r5, 0x2fb9(r30)
/* 800B2A68 000AF9A8  28 05 00 01 */ cmplwi r5, 1
/* 800B2A6C 000AF9AC  40 82 00 18 */ bne lbl_800B2A84
/* 800B2A70 000AF9B0  A8 1E 31 14 */ lha r0, 0x3114(r30)
/* 800B2A74 000AF9B4  2C 00 60 00 */ cmpwi r0, 0x6000
/* 800B2A78 000AF9B8  41 81 00 28 */ bgt lbl_800B2AA0
/* 800B2A7C 000AF9BC  2C 00 80 00 */ cmpwi r0, -32768
/* 800B2A80 000AF9C0  41 82 00 20 */ beq lbl_800B2AA0
lbl_800B2A84:
/* 800B2A84 000AF9C4  28 05 00 02 */ cmplwi r5, 2
/* 800B2A88 000AF9C8  40 82 00 38 */ bne lbl_800B2AC0
/* 800B2A8C 000AF9CC  A8 1E 31 14 */ lha r0, 0x3114(r30)
/* 800B2A90 000AF9D0  2C 00 80 00 */ cmpwi r0, -32768
/* 800B2A94 000AF9D4  41 82 00 2C */ beq lbl_800B2AC0
/* 800B2A98 000AF9D8  2C 00 40 00 */ cmpwi r0, 0x4000
/* 800B2A9C 000AF9DC  40 80 00 24 */ bge lbl_800B2AC0
lbl_800B2AA0:
/* 800B2AA0 000AF9E0  7F C3 F3 78 */ mr r3, r30
/* 800B2AA4 000AF9E4  A8 9E 2F E2 */ lha r4, 0x2fe2(r30)
/* 800B2AA8 000AF9E8  38 A0 00 00 */ li r5, 0
/* 800B2AAC 000AF9EC  48 02 FC 8D */ bl daAlink_c_NS_getMagneBootsLocalAngleY
/* 800B2AB0 000AF9F0  3C 63 00 01 */ addis r3, r3, 1
/* 800B2AB4 000AF9F4  38 03 80 00 */ addi r0, r3, -32768
/* 800B2AB8 000AF9F8  B0 1E 2F E2 */ sth r0, 0x2fe2(r30)
/* 800B2ABC 000AF9FC  48 00 00 20 */ b lbl_800B2ADC
lbl_800B2AC0:
/* 800B2AC0 000AFA00  7F C3 F3 78 */ mr r3, r30
/* 800B2AC4 000AFA04  A8 9E 2F E2 */ lha r4, 0x2fe2(r30)
/* 800B2AC8 000AFA08  48 02 FC 71 */ bl daAlink_c_NS_getMagneBootsLocalAngleY
/* 800B2ACC 000AFA0C  B0 7E 2F E2 */ sth r3, 0x2fe2(r30)
/* 800B2AD0 000AFA10  48 00 00 0C */ b lbl_800B2ADC
lbl_800B2AD4:
/* 800B2AD4 000AFA14  38 00 00 01 */ li r0, 1
/* 800B2AD8 000AFA18  98 1E 2F B9 */ stb r0, 0x2fb9(r30)
lbl_800B2ADC:
/* 800B2ADC 000AFA1C  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 800B2AE0 000AFA20  38 63 D2 E8 */ addi r3, r3, m_cpadInfo@l
/* 800B2AE4 000AFA24  80 03 00 34 */ lwz r0, 0x34(r3)
/* 800B2AE8 000AFA28  54 00 05 AD */ rlwinm. r0, r0, 0, 0x16, 0x16
/* 800B2AEC 000AFA2C  41 82 00 10 */ beq lbl_800B2AFC
/* 800B2AF0 000AFA30  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800B2AF4 000AFA34  60 00 00 08 */ ori r0, r0, 8
/* 800B2AF8 000AFA38  98 1E 2F 8D */ stb r0, 0x2f8d(r30)
lbl_800B2AFC:
/* 800B2AFC 000AFA3C  80 03 00 34 */ lwz r0, 0x34(r3)
/* 800B2B00 000AFA40  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 800B2B04 000AFA44  41 82 00 10 */ beq lbl_800B2B14
/* 800B2B08 000AFA48  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800B2B0C 000AFA4C  60 00 00 10 */ ori r0, r0, 0x10
/* 800B2B10 000AFA50  98 1E 2F 8D */ stb r0, 0x2f8d(r30)
lbl_800B2B14:
/* 800B2B14 000AFA54  80 03 00 34 */ lwz r0, 0x34(r3)
/* 800B2B18 000AFA58  54 00 05 6B */ rlwinm. r0, r0, 0, 0x15, 0x15
/* 800B2B1C 000AFA5C  41 82 00 10 */ beq lbl_800B2B2C
/* 800B2B20 000AFA60  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800B2B24 000AFA64  60 00 00 01 */ ori r0, r0, 1
/* 800B2B28 000AFA68  98 1E 2F 8D */ stb r0, 0x2f8d(r30)
lbl_800B2B2C:
/* 800B2B2C 000AFA6C  80 03 00 34 */ lwz r0, 0x34(r3)
/* 800B2B30 000AFA70  54 00 05 29 */ rlwinm. r0, r0, 0, 0x14, 0x14
/* 800B2B34 000AFA74  41 82 00 10 */ beq lbl_800B2B44
/* 800B2B38 000AFA78  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800B2B3C 000AFA7C  60 00 00 02 */ ori r0, r0, 2
/* 800B2B40 000AFA80  98 1E 2F 8D */ stb r0, 0x2f8d(r30)
lbl_800B2B44:
/* 800B2B44 000AFA84  80 03 00 34 */ lwz r0, 0x34(r3)
/* 800B2B48 000AFA88  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B2B4C 000AFA8C  41 82 00 10 */ beq lbl_800B2B5C
/* 800B2B50 000AFA90  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800B2B54 000AFA94  60 00 00 04 */ ori r0, r0, 4
/* 800B2B58 000AFA98  98 1E 2F 8D */ stb r0, 0x2f8d(r30)
lbl_800B2B5C:
/* 800B2B5C 000AFA9C  80 03 00 34 */ lwz r0, 0x34(r3)
/* 800B2B60 000AFAA0  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800B2B64 000AFAA4  41 82 00 10 */ beq lbl_800B2B74
/* 800B2B68 000AFAA8  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800B2B6C 000AFAAC  60 00 00 20 */ ori r0, r0, 0x20
/* 800B2B70 000AFAB0  98 1E 2F 8D */ stb r0, 0x2f8d(r30)
lbl_800B2B74:
/* 800B2B74 000AFAB4  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 800B2B78 000AFAB8  38 63 D2 E8 */ addi r3, r3, m_cpadInfo@l
/* 800B2B7C 000AFABC  88 03 00 3C */ lbz r0, 0x3c(r3)
/* 800B2B80 000AFAC0  28 00 00 00 */ cmplwi r0, 0
/* 800B2B84 000AFAC4  41 82 00 10 */ beq lbl_800B2B94
/* 800B2B88 000AFAC8  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800B2B8C 000AFACC  60 00 00 40 */ ori r0, r0, 0x40
/* 800B2B90 000AFAD0  98 1E 2F 8D */ stb r0, 0x2f8d(r30)
lbl_800B2B94:
/* 800B2B94 000AFAD4  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 800B2B98 000AFAD8  38 63 D2 E8 */ addi r3, r3, m_cpadInfo@l
/* 800B2B9C 000AFADC  80 03 00 30 */ lwz r0, 0x30(r3)
/* 800B2BA0 000AFAE0  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 800B2BA4 000AFAE4  41 82 00 10 */ beq lbl_800B2BB4
/* 800B2BA8 000AFAE8  88 1E 2F 8E */ lbz r0, 0x2f8e(r30)
/* 800B2BAC 000AFAEC  60 00 00 10 */ ori r0, r0, 0x10
/* 800B2BB0 000AFAF0  98 1E 2F 8E */ stb r0, 0x2f8e(r30)
lbl_800B2BB4:
/* 800B2BB4 000AFAF4  80 03 00 30 */ lwz r0, 0x30(r3)
/* 800B2BB8 000AFAF8  54 00 05 AD */ rlwinm. r0, r0, 0, 0x16, 0x16
/* 800B2BBC 000AFAFC  41 82 00 10 */ beq lbl_800B2BCC
/* 800B2BC0 000AFB00  88 1E 2F 8E */ lbz r0, 0x2f8e(r30)
/* 800B2BC4 000AFB04  60 00 00 08 */ ori r0, r0, 8
/* 800B2BC8 000AFB08  98 1E 2F 8E */ stb r0, 0x2f8e(r30)
lbl_800B2BCC:
/* 800B2BCC 000AFB0C  80 03 00 30 */ lwz r0, 0x30(r3)
/* 800B2BD0 000AFB10  54 00 05 6B */ rlwinm. r0, r0, 0, 0x15, 0x15
/* 800B2BD4 000AFB14  41 82 00 10 */ beq lbl_800B2BE4
/* 800B2BD8 000AFB18  88 1E 2F 8E */ lbz r0, 0x2f8e(r30)
/* 800B2BDC 000AFB1C  60 00 00 01 */ ori r0, r0, 1
/* 800B2BE0 000AFB20  98 1E 2F 8E */ stb r0, 0x2f8e(r30)
lbl_800B2BE4:
/* 800B2BE4 000AFB24  80 03 00 30 */ lwz r0, 0x30(r3)
/* 800B2BE8 000AFB28  54 00 05 29 */ rlwinm. r0, r0, 0, 0x14, 0x14
/* 800B2BEC 000AFB2C  41 82 00 10 */ beq lbl_800B2BFC
/* 800B2BF0 000AFB30  88 1E 2F 8E */ lbz r0, 0x2f8e(r30)
/* 800B2BF4 000AFB34  60 00 00 02 */ ori r0, r0, 2
/* 800B2BF8 000AFB38  98 1E 2F 8E */ stb r0, 0x2f8e(r30)
lbl_800B2BFC:
/* 800B2BFC 000AFB3C  80 03 00 30 */ lwz r0, 0x30(r3)
/* 800B2C00 000AFB40  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B2C04 000AFB44  41 82 00 10 */ beq lbl_800B2C14
/* 800B2C08 000AFB48  88 1E 2F 8E */ lbz r0, 0x2f8e(r30)
/* 800B2C0C 000AFB4C  60 00 00 04 */ ori r0, r0, 4
/* 800B2C10 000AFB50  98 1E 2F 8E */ stb r0, 0x2f8e(r30)
lbl_800B2C14:
/* 800B2C14 000AFB54  80 03 00 30 */ lwz r0, 0x30(r3)
/* 800B2C18 000AFB58  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800B2C1C 000AFB5C  41 82 00 10 */ beq lbl_800B2C2C
/* 800B2C20 000AFB60  88 1E 2F 8E */ lbz r0, 0x2f8e(r30)
/* 800B2C24 000AFB64  60 00 00 20 */ ori r0, r0, 0x20
/* 800B2C28 000AFB68  98 1E 2F 8E */ stb r0, 0x2f8e(r30)
lbl_800B2C2C:
/* 800B2C2C 000AFB6C  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 800B2C30 000AFB70  38 63 D2 E8 */ addi r3, r3, m_cpadInfo@l
/* 800B2C34 000AFB74  88 03 00 3B */ lbz r0, 0x3b(r3)
/* 800B2C38 000AFB78  28 00 00 00 */ cmplwi r0, 0
/* 800B2C3C 000AFB7C  41 82 00 10 */ beq lbl_800B2C4C
/* 800B2C40 000AFB80  88 1E 2F 8E */ lbz r0, 0x2f8e(r30)
/* 800B2C44 000AFB84  60 00 00 40 */ ori r0, r0, 0x40
/* 800B2C48 000AFB88  98 1E 2F 8E */ stb r0, 0x2f8e(r30)
lbl_800B2C4C:
/* 800B2C4C 000AFB8C  7F C3 F3 78 */ mr r3, r30
/* 800B2C50 000AFB90  38 80 00 01 */ li r4, 1
/* 800B2C54 000AFB94  38 A0 00 01 */ li r5, 1
/* 800B2C58 000AFB98  48 00 88 61 */ bl daAlink_c_NS_checkHeavyStateOn
/* 800B2C5C 000AFB9C  2C 03 00 00 */ cmpwi r3, 0
/* 800B2C60 000AFBA0  41 82 00 A0 */ beq lbl_800B2D00
/* 800B2C64 000AFBA4  7F C3 F3 78 */ mr r3, r30
/* 800B2C68 000AFBA8  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800B2C6C 000AFBAC  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800B2C70 000AFBB0  7D 89 03 A6 */ mtctr r12
/* 800B2C74 000AFBB4  4E 80 04 21 */ bctrl
/* 800B2C78 000AFBB8  2C 03 00 00 */ cmpwi r3, 0
/* 800B2C7C 000AFBBC  41 82 00 10 */ beq lbl_800B2C8C
/* 800B2C80 000AFBC0  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B2C84 000AFBC4  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 800B2C88 000AFBC8  40 82 00 78 */ bne lbl_800B2D00
lbl_800B2C8C:
/* 800B2C8C 000AFBCC  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B2C90 000AFBD0  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B2C94 000AFBD4  41 82 00 48 */ beq lbl_800B2CDC
/* 800B2C98 000AFBD8  7F C3 F3 78 */ mr r3, r30
/* 800B2C9C 000AFBDC  38 80 00 01 */ li r4, 1
/* 800B2CA0 000AFBE0  38 A0 00 00 */ li r5, 0
/* 800B2CA4 000AFBE4  48 00 88 15 */ bl daAlink_c_NS_checkHeavyStateOn
/* 800B2CA8 000AFBE8  2C 03 00 00 */ cmpwi r3, 0
/* 800B2CAC 000AFBEC  41 82 00 30 */ beq lbl_800B2CDC
/* 800B2CB0 000AFBF0  C0 3E 2B A8 */ lfs f1, 0x2ba8(r30)
/* 800B2CB4 000AFBF4  C0 02 94 0C */ lfs f0, lbl_80452E0C-_SDA2_BASE_(r2)
/* 800B2CB8 000AFBF8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B2CBC 000AFBFC  40 80 00 20 */ bge lbl_800B2CDC
/* 800B2CC0 000AFC00  C0 22 93 A8 */ lfs f1, lbl_80452DA8-_SDA2_BASE_(r2)
/* 800B2CC4 000AFC04  3C 60 80 39 */ lis r3, lbl_8038E7F4@ha
/* 800B2CC8 000AFC08  38 63 E7 F4 */ addi r3, r3, lbl_8038E7F4@l
/* 800B2CCC 000AFC0C  C0 03 00 14 */ lfs f0, 0x14(r3)
/* 800B2CD0 000AFC10  EC 01 00 32 */ fmuls f0, f1, f0
/* 800B2CD4 000AFC14  D0 1E 34 34 */ stfs f0, 0x3434(r30)
/* 800B2CD8 000AFC18  48 00 00 14 */ b lbl_800B2CEC
lbl_800B2CDC:
/* 800B2CDC 000AFC1C  3C 60 80 39 */ lis r3, lbl_8038E7F4@ha
/* 800B2CE0 000AFC20  38 63 E7 F4 */ addi r3, r3, lbl_8038E7F4@l
/* 800B2CE4 000AFC24  C0 03 00 14 */ lfs f0, 0x14(r3)
/* 800B2CE8 000AFC28  D0 1E 34 34 */ stfs f0, 0x3434(r30)
lbl_800B2CEC:
/* 800B2CEC 000AFC2C  C0 3E 33 A8 */ lfs f1, 0x33a8(r30)
/* 800B2CF0 000AFC30  C0 1E 34 34 */ lfs f0, 0x3434(r30)
/* 800B2CF4 000AFC34  EC 01 00 32 */ fmuls f0, f1, f0
/* 800B2CF8 000AFC38  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
/* 800B2CFC 000AFC3C  48 00 00 C4 */ b lbl_800B2DC0
lbl_800B2D00:
/* 800B2D00 000AFC40  7F C3 F3 78 */ mr r3, r30
/* 800B2D04 000AFC44  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800B2D08 000AFC48  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800B2D0C 000AFC4C  7D 89 03 A6 */ mtctr r12
/* 800B2D10 000AFC50  4E 80 04 21 */ bctrl
/* 800B2D14 000AFC54  2C 03 00 00 */ cmpwi r3, 0
/* 800B2D18 000AFC58  41 82 00 4C */ beq lbl_800B2D64
/* 800B2D1C 000AFC5C  7F C3 F3 78 */ mr r3, r30
/* 800B2D20 000AFC60  48 00 D0 91 */ bl daAlink_c_NS_checkZoraWearAbility
/* 800B2D24 000AFC64  2C 03 00 00 */ cmpwi r3, 0
/* 800B2D28 000AFC68  41 82 00 18 */ beq lbl_800B2D40
/* 800B2D2C 000AFC6C  3C 60 80 39 */ lis r3, lbl_8038E7F4@ha
/* 800B2D30 000AFC70  38 63 E7 F4 */ addi r3, r3, lbl_8038E7F4@l
/* 800B2D34 000AFC74  C0 03 00 44 */ lfs f0, 0x44(r3)
/* 800B2D38 000AFC78  D0 1E 34 34 */ stfs f0, 0x3434(r30)
/* 800B2D3C 000AFC7C  48 00 00 14 */ b lbl_800B2D50
lbl_800B2D40:
/* 800B2D40 000AFC80  3C 60 80 39 */ lis r3, lbl_8038E7F4@ha
/* 800B2D44 000AFC84  38 63 E7 F4 */ addi r3, r3, lbl_8038E7F4@l
/* 800B2D48 000AFC88  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 800B2D4C 000AFC8C  D0 1E 34 34 */ stfs f0, 0x3434(r30)
lbl_800B2D50:
/* 800B2D50 000AFC90  C0 3E 33 A8 */ lfs f1, 0x33a8(r30)
/* 800B2D54 000AFC94  C0 1E 34 34 */ lfs f0, 0x3434(r30)
/* 800B2D58 000AFC98  EC 01 00 32 */ fmuls f0, f1, f0
/* 800B2D5C 000AFC9C  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
/* 800B2D60 000AFCA0  48 00 00 60 */ b lbl_800B2DC0
lbl_800B2D64:
/* 800B2D64 000AFCA4  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B2D68 000AFCA8  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B2D6C 000AFCAC  41 82 00 20 */ beq lbl_800B2D8C
/* 800B2D70 000AFCB0  88 1E 2F BC */ lbz r0, 0x2fbc(r30)
/* 800B2D74 000AFCB4  28 00 00 0B */ cmplwi r0, 0xb
/* 800B2D78 000AFCB8  40 82 00 14 */ bne lbl_800B2D8C
/* 800B2D7C 000AFCBC  7F C3 F3 78 */ mr r3, r30
/* 800B2D80 000AFCC0  4B FF E7 09 */ bl daAlink_c_NS_checkWaterPolygonUnder
/* 800B2D84 000AFCC4  2C 03 00 00 */ cmpwi r3, 0
/* 800B2D88 000AFCC8  40 82 00 10 */ bne lbl_800B2D98
lbl_800B2D8C:
/* 800B2D8C 000AFCCC  88 1E 2F BB */ lbz r0, 0x2fbb(r30)
/* 800B2D90 000AFCD0  28 00 00 0B */ cmplwi r0, 0xb
/* 800B2D94 000AFCD4  40 82 00 2C */ bne lbl_800B2DC0
lbl_800B2D98:
/* 800B2D98 000AFCD8  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B2D9C 000AFCDC  64 00 40 00 */ oris r0, r0, 0x4000
/* 800B2DA0 000AFCE0  90 1E 05 70 */ stw r0, 0x570(r30)
/* 800B2DA4 000AFCE4  C0 1E 33 A8 */ lfs f0, 0x33a8(r30)
/* 800B2DA8 000AFCE8  3C 60 80 39 */ lis r3, lbl_8038F9F8@ha
/* 800B2DAC 000AFCEC  38 63 F9 F8 */ addi r3, r3, lbl_8038F9F8@l
/* 800B2DB0 000AFCF0  C0 23 00 14 */ lfs f1, 0x14(r3)
/* 800B2DB4 000AFCF4  EC 00 00 72 */ fmuls f0, f0, f1
/* 800B2DB8 000AFCF8  D0 1E 33 A8 */ stfs f0, 0x33a8(r30)
/* 800B2DBC 000AFCFC  D0 3E 34 34 */ stfs f1, 0x3434(r30)
lbl_800B2DC0:
/* 800B2DC0 000AFD00  A8 7E 30 7C */ lha r3, 0x307c(r30)
/* 800B2DC4 000AFD04  A8 1E 2F E0 */ lha r0, 0x2fe0(r30)
/* 800B2DC8 000AFD08  7C 03 00 50 */ subf r0, r3, r0
/* 800B2DCC 000AFD0C  7C 1D 07 34 */ extsh r29, r0
/* 800B2DD0 000AFD10  7F A3 EB 78 */ mr r3, r29
/* 800B2DD4 000AFD14  48 2B 22 FD */ bl func_803650D0
/* 800B2DD8 000AFD18  2C 03 40 00 */ cmpwi r3, 0x4000
/* 800B2DDC 000AFD1C  40 80 00 2C */ bge lbl_800B2E08
/* 800B2DE0 000AFD20  2C 03 06 D4 */ cmpwi r3, 0x6d4
/* 800B2DE4 000AFD24  40 81 00 24 */ ble lbl_800B2E08
/* 800B2DE8 000AFD28  80 7E 31 80 */ lwz r3, 0x3180(r30)
/* 800B2DEC 000AFD2C  7C 03 E9 D7 */ mullw. r0, r3, r29
/* 800B2DF0 000AFD30  41 80 00 18 */ blt lbl_800B2E08
/* 800B2DF4 000AFD34  7C 03 EA 14 */ add r0, r3, r29
/* 800B2DF8 000AFD38  90 1E 31 80 */ stw r0, 0x3180(r30)
/* 800B2DFC 000AFD3C  38 00 00 04 */ li r0, 4
/* 800B2E00 000AFD40  B0 1E 30 7A */ sth r0, 0x307a(r30)
/* 800B2E04 000AFD44  48 00 00 40 */ b lbl_800B2E44
lbl_800B2E08:
/* 800B2E08 000AFD48  80 1E 31 80 */ lwz r0, 0x3180(r30)
/* 800B2E0C 000AFD4C  7C 00 E9 D7 */ mullw. r0, r0, r29
/* 800B2E10 000AFD50  40 80 00 14 */ bge lbl_800B2E24
/* 800B2E14 000AFD54  93 BE 31 80 */ stw r29, 0x3180(r30)
/* 800B2E18 000AFD58  38 00 00 04 */ li r0, 4
/* 800B2E1C 000AFD5C  B0 1E 30 7A */ sth r0, 0x307a(r30)
/* 800B2E20 000AFD60  48 00 00 24 */ b lbl_800B2E44
lbl_800B2E24:
/* 800B2E24 000AFD64  A8 7E 30 7A */ lha r3, 0x307a(r30)
/* 800B2E28 000AFD68  2C 03 00 00 */ cmpwi r3, 0
/* 800B2E2C 000AFD6C  40 81 00 10 */ ble lbl_800B2E3C
/* 800B2E30 000AFD70  38 03 FF FF */ addi r0, r3, -1
/* 800B2E34 000AFD74  B0 1E 30 7A */ sth r0, 0x307a(r30)
/* 800B2E38 000AFD78  48 00 00 0C */ b lbl_800B2E44
lbl_800B2E3C:
/* 800B2E3C 000AFD7C  38 00 00 00 */ li r0, 0
/* 800B2E40 000AFD80  90 1E 31 80 */ stw r0, 0x3180(r30)
lbl_800B2E44:
/* 800B2E44 000AFD84  88 1E 2F 8E */ lbz r0, 0x2f8e(r30)
/* 800B2E48 000AFD88  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B2E4C 000AFD8C  40 82 00 10 */ bne lbl_800B2E5C
/* 800B2E50 000AFD90  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B2E54 000AFD94  54 00 01 04 */ rlwinm r0, r0, 0, 4, 2
/* 800B2E58 000AFD98  90 1E 05 70 */ stw r0, 0x570(r30)
lbl_800B2E5C:
/* 800B2E5C 000AFD9C  2C 1F 00 00 */ cmpwi r31, 0
/* 800B2E60 000AFDA0  40 82 00 2C */ bne lbl_800B2E8C
/* 800B2E64 000AFDA4  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800B2E68 000AFDA8  54 00 06 31 */ rlwinm. r0, r0, 0, 0x18, 0x18
/* 800B2E6C 000AFDAC  41 82 00 20 */ beq lbl_800B2E8C
/* 800B2E70 000AFDB0  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800B2E74 000AFDB4  54 00 06 6E */ rlwinm r0, r0, 0, 0x19, 0x17
/* 800B2E78 000AFDB8  90 1E 05 78 */ stw r0, 0x578(r30)
/* 800B2E7C 000AFDBC  38 00 00 01 */ li r0, 1
/* 800B2E80 000AFDC0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B2E84 000AFDC4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B2E88 000AFDC8  98 03 5E B8 */ stb r0, 0x5eb8(r3)
lbl_800B2E8C:
/* 800B2E8C 000AFDCC  39 61 00 20 */ addi r11, r1, 0x20
/* 800B2E90 000AFDD0  48 2A F3 99 */ bl _restgpr_29
/* 800B2E94 000AFDD4  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800B2E98 000AFDD8  7C 08 03 A6 */ mtlr r0
/* 800B2E9C 000AFDDC  38 21 00 20 */ addi r1, r1, 0x20
/* 800B2EA0 000AFDE0  4E 80 00 20 */ blr
