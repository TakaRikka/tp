/* 80027C90 00024BD0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80027C94 00024BD4  7C 08 02 A6 */ mflr r0
/* 80027C98 00024BD8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80027C9C 00024BDC  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 80027CA0 00024BE0  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 80027CA4 00024BE4  38 63 03 03 */ addi r3, r3, 0x303
/* 80027CA8 00024BE8  4C C6 31 82 */ crclr 6
/* 80027CAC 00024BEC  4B FD EE 11 */ bl OSReport
/* 80027CB0 00024BF0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80027CB4 00024BF4  7C 08 03 A6 */ mtlr r0
/* 80027CB8 00024BF8  38 21 00 10 */ addi r1, r1, 0x10
/* 80027CBC 00024BFC  4E 80 00 20 */ blr