/* 8019F264 0019C1A4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8019F268 0019C1A8  7C 08 02 A6 */ mflr r0
/* 8019F26C 0019C1AC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8019F270 0019C1B0  38 60 00 00 */ li r3, 0
/* 8019F274 0019C1B4  38 80 00 00 */ li r4, 0
/* 8019F278 0019C1B8  38 A0 00 00 */ li r5, 0
/* 8019F27C 0019C1BC  C0 22 A2 0C */ lfs f1, lbl_80453C0C-_SDA2_BASE_(r2)
/* 8019F280 0019C1C0  48 00 8C 09 */ bl dKy_actor_addcol_set
/* 8019F284 0019C1C4  C0 02 A2 48 */ lfs f0, lbl_80453C48-_SDA2_BASE_(r2)
/* 8019F288 0019C1C8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8019F28C 0019C1CC  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8019F290 0019C1D0  D0 03 10 88 */ stfs f0, 0x1088(r3)
/* 8019F294 0019C1D4  C0 22 A2 0C */ lfs f1, lbl_80453C0C-_SDA2_BASE_(r2)
/* 8019F298 0019C1D8  D0 23 10 8C */ stfs f1, 0x108c(r3)
/* 8019F29C 0019C1DC  D0 23 10 90 */ stfs f1, 0x1090(r3)
/* 8019F2A0 0019C1E0  C0 02 A2 50 */ lfs f0, lbl_80453C50-_SDA2_BASE_(r2)
/* 8019F2A4 0019C1E4  D0 03 10 94 */ stfs f0, 0x1094(r3)
/* 8019F2A8 0019C1E8  D0 23 10 98 */ stfs f1, 0x1098(r3)
/* 8019F2AC 0019C1EC  D0 23 10 9C */ stfs f1, 0x109c(r3)
/* 8019F2B0 0019C1F0  D0 03 12 48 */ stfs f0, 0x1248(r3)
/* 8019F2B4 0019C1F4  D0 03 12 74 */ stfs f0, 0x1274(r3)
/* 8019F2B8 0019C1F8  C0 02 A2 B8 */ lfs f0, lbl_80453CB8-_SDA2_BASE_(r2)
/* 8019F2BC 0019C1FC  D0 03 12 50 */ stfs f0, 0x1250(r3)
/* 8019F2C0 0019C200  38 00 00 00 */ li r0, 0
/* 8019F2C4 0019C204  98 03 12 FD */ stb r0, 0x12fd(r3)
/* 8019F2C8 0019C208  98 03 12 FE */ stb r0, 0x12fe(r3)
/* 8019F2CC 0019C20C  98 03 13 0A */ stb r0, 0x130a(r3)
/* 8019F2D0 0019C210  98 03 12 CC */ stb r0, 0x12cc(r3)
/* 8019F2D4 0019C214  98 03 13 0C */ stb r0, 0x130c(r3)
/* 8019F2D8 0019C218  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8019F2DC 0019C21C  7C 08 03 A6 */ mtlr r0
/* 8019F2E0 0019C220  38 21 00 10 */ addi r1, r1, 0x10
/* 8019F2E4 0019C224  4E 80 00 20 */ blr