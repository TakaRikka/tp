/* 80174EAC 00171DEC  80 83 0A FC */ lwz r4, 0xafc(r3)
/* 80174EB0 00171DF0  A0 04 00 04 */ lhz r0, 4(r4)
/* 80174EB4 00171DF4  2C 00 00 04 */ cmpwi r0, 4
/* 80174EB8 00171DF8  41 82 00 0C */ beq lbl_80174EC4
/* 80174EBC 00171DFC  38 60 00 00 */ li r3, 0
/* 80174EC0 00171E00  4E 80 00 20 */ blr
lbl_80174EC4:
/* 80174EC4 00171E04  C0 03 04 0C */ lfs f0, 0x40c(r3)
/* 80174EC8 00171E08  D0 03 07 3C */ stfs f0, 0x73c(r3)
/* 80174ECC 00171E0C  38 60 00 01 */ li r3, 1
/* 80174ED0 00171E10  4E 80 00 20 */ blr