/* 80268560 002654A0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80268564 002654A4  7C 08 02 A6 */ mflr r0
/* 80268568 002654A8  90 01 00 24 */ stw r0, 0x24(r1)
/* 8026856C 002654AC  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80268570 002654B0  93 C1 00 18 */ stw r30, 0x18(r1)
/* 80268574 002654B4  7C 7E 1B 78 */ mr r30, r3
/* 80268578 002654B8  7C BF 2B 78 */ mr r31, r5
/* 8026857C 002654BC  7C 83 23 78 */ mr r3, r4
/* 80268580 002654C0  38 81 00 08 */ addi r4, r1, 8
/* 80268584 002654C4  48 0D EB 55 */ bl PSVECScale
/* 80268588 002654C8  38 61 00 08 */ addi r3, r1, 8
/* 8026858C 002654CC  7F C4 F3 78 */ mr r4, r30
/* 80268590 002654D0  7F E5 FB 78 */ mr r5, r31
/* 80268594 002654D4  48 0D EA FD */ bl PSVECAdd
/* 80268598 002654D8  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 8026859C 002654DC  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 802685A0 002654E0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802685A4 002654E4  7C 08 03 A6 */ mtlr r0
/* 802685A8 002654E8  38 21 00 20 */ addi r1, r1, 0x20
/* 802685AC 002654EC  4E 80 00 20 */ blr