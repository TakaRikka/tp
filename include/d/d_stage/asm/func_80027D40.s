/* 80027D40 00024C80  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80027D44 00024C84  7C 08 02 A6 */ mflr r0
/* 80027D48 00024C88  90 01 00 14 */ stw r0, 0x14(r1)
/* 80027D4C 00024C8C  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 80027D50 00024C90  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 80027D54 00024C94  38 63 03 1D */ addi r3, r3, 0x31d
/* 80027D58 00024C98  4C C6 31 82 */ crclr 6
/* 80027D5C 00024C9C  4B FD ED 61 */ bl OSReport
/* 80027D60 00024CA0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80027D64 00024CA4  7C 08 03 A6 */ mtlr r0
/* 80027D68 00024CA8  38 21 00 10 */ addi r1, r1, 0x10
/* 80027D6C 00024CAC  4E 80 00 20 */ blr