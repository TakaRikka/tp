/* 8010163C 000FE57C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80101640 000FE580  7C 08 02 A6 */ mflr r0
/* 80101644 000FE584  90 01 00 24 */ stw r0, 0x24(r1)
/* 80101648 000FE588  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 8010164C 000FE58C  93 C1 00 18 */ stw r30, 0x18(r1)
/* 80101650 000FE590  7C 7E 1B 78 */ mr r30, r3
/* 80101654 000FE594  83 E3 28 10 */ lwz r31, 0x2810(r3)
/* 80101658 000FE598  38 61 00 08 */ addi r3, r1, 8
/* 8010165C 000FE59C  7F E4 FB 78 */ mr r4, r31
/* 80101660 000FE5A0  48 00 02 15 */ bl daObjSwHang_c_NS_getHangPos
/* 80101664 000FE5A4  C0 01 00 08 */ lfs f0, 8(r1)
/* 80101668 000FE5A8  D0 1E 04 D0 */ stfs f0, 0x4d0(r30)
/* 8010166C 000FE5AC  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 80101670 000FE5B0  D0 1E 04 D4 */ stfs f0, 0x4d4(r30)
/* 80101674 000FE5B4  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 80101678 000FE5B8  D0 1E 04 D8 */ stfs f0, 0x4d8(r30)
/* 8010167C 000FE5BC  C0 3E 04 D4 */ lfs f1, 0x4d4(r30)
/* 80101680 000FE5C0  C0 02 95 A4 */ lfs f0, lbl_80452FA4-_SDA2_BASE_(r2)
/* 80101684 000FE5C4  EC 01 00 28 */ fsubs f0, f1, f0
/* 80101688 000FE5C8  D0 1E 04 D4 */ stfs f0, 0x4d4(r30)
/* 8010168C 000FE5CC  38 00 00 01 */ li r0, 1
/* 80101690 000FE5D0  98 1F 07 7C */ stb r0, 0x77c(r31)
/* 80101694 000FE5D4  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80101698 000FE5D8  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 8010169C 000FE5DC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 801016A0 000FE5E0  7C 08 03 A6 */ mtlr r0
/* 801016A4 000FE5E4  38 21 00 20 */ addi r1, r1, 0x20
/* 801016A8 000FE5E8  4E 80 00 20 */ blr
