/* 800F2898 000EF7D8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F289C 000EF7DC  7C 08 02 A6 */ mflr r0
/* 800F28A0 000EF7E0  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F28A4 000EF7E4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F28A8 000EF7E8  7C 7F 1B 78 */ mr r31, r3
/* 800F28AC 000EF7EC  48 01 66 B9 */ bl daAlink_c_NS_cancelHookshotMove
/* 800F28B0 000EF7F0  7F E3 FB 78 */ mr r3, r31
/* 800F28B4 000EF7F4  48 01 61 65 */ bl daAlink_c_NS_checkHookshotWait
/* 800F28B8 000EF7F8  2C 03 00 00 */ cmpwi r3, 0
/* 800F28BC 000EF7FC  41 82 00 10 */ beq lbl_800F28CC
/* 800F28C0 000EF800  7F E3 FB 78 */ mr r3, r31
/* 800F28C4 000EF804  38 80 00 12 */ li r4, 0x12
/* 800F28C8 000EF808  4B FC 09 89 */ bl daAlink_c_NS_setDoStatus
lbl_800F28CC:
/* 800F28CC 000EF80C  7F E3 FB 78 */ mr r3, r31
/* 800F28D0 000EF810  4B FF B1 55 */ bl daAlink_c_NS_setSyncRidePos
/* 800F28D4 000EF814  2C 03 00 00 */ cmpwi r3, 0
/* 800F28D8 000EF818  40 82 00 0C */ bne lbl_800F28E4
/* 800F28DC 000EF81C  38 60 00 01 */ li r3, 1
/* 800F28E0 000EF820  48 00 00 40 */ b lbl_800F2920
lbl_800F28E4:
/* 800F28E4 000EF824  7F E3 FB 78 */ mr r3, r31
/* 800F28E8 000EF828  4B FF B4 85 */ bl daAlink_c_NS_checkHorseSpecialProc
/* 800F28EC 000EF82C  2C 03 00 00 */ cmpwi r3, 0
/* 800F28F0 000EF830  41 82 00 0C */ beq lbl_800F28FC
/* 800F28F4 000EF834  38 60 00 01 */ li r3, 1
/* 800F28F8 000EF838  48 00 00 28 */ b lbl_800F2920
lbl_800F28FC:
/* 800F28FC 000EF83C  7F E3 FB 78 */ mr r3, r31
/* 800F2900 000EF840  4B FF C4 99 */ bl daAlink_c_NS_setBaseRideAnime
/* 800F2904 000EF844  7F E3 FB 78 */ mr r3, r31
/* 800F2908 000EF848  4B FF CB 49 */ bl daAlink_c_NS_checkNextActionHorse
/* 800F290C 000EF84C  2C 03 00 00 */ cmpwi r3, 0
/* 800F2910 000EF850  40 82 00 0C */ bne lbl_800F291C
/* 800F2914 000EF854  7F E3 FB 78 */ mr r3, r31
/* 800F2918 000EF858  4B FF C7 39 */ bl daAlink_c_NS_setBodyAngleRideReadyAnime
lbl_800F291C:
/* 800F291C 000EF85C  38 60 00 01 */ li r3, 1
lbl_800F2920:
/* 800F2920 000EF860  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F2924 000EF864  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F2928 000EF868  7C 08 03 A6 */ mtlr r0
/* 800F292C 000EF86C  38 21 00 10 */ addi r1, r1, 0x10
/* 800F2930 000EF870  4E 80 00 20 */ blr
