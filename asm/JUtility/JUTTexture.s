.include "macros.inc"

.section .text, "ax" # 802de234


.global JUTTexture_NS_dtor
JUTTexture_NS_dtor:
/* 802DE234 002DB174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE238 002DB178  7C 08 02 A6 */	mflr r0
/* 802DE23C 002DB17C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE240 002DB180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE244 002DB184  93 C1 00 08 */	stw r30, 8(r1)
/* 802DE248 002DB188  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DE24C 002DB18C  7C 9F 23 78 */	mr r31, r4
/* 802DE250 002DB190  41 82 00 3C */	beq lbl_802DE28C
/* 802DE254 002DB194  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802DE258 002DB198  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802DE25C 002DB19C  41 82 00 0C */	beq lbl_802DE268
/* 802DE260 002DB1A0  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 802DE264 002DB1A4  4B FF 0A FD */	bl __dla__FPv
lbl_802DE268:
/* 802DE268 002DB1A8  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802DE26C 002DB1AC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802DE270 002DB1B0  41 82 00 0C */	beq lbl_802DE27C
/* 802DE274 002DB1B4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802DE278 002DB1B8  4B FF 0A C5 */	bl __dl__FPv
lbl_802DE27C:
/* 802DE27C 002DB1BC  7F E0 07 35 */	extsh. r0, r31
/* 802DE280 002DB1C0  40 81 00 0C */	ble lbl_802DE28C
/* 802DE284 002DB1C4  7F C3 F3 78 */	mr r3, r30
/* 802DE288 002DB1C8  4B FF 0A B5 */	bl __dl__FPv
lbl_802DE28C:
/* 802DE28C 002DB1CC  7F C3 F3 78 */	mr r3, r30
/* 802DE290 002DB1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE294 002DB1D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DE298 002DB1D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE29C 002DB1DC  7C 08 03 A6 */	mtlr r0
/* 802DE2A0 002DB1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE2A4 002DB1E4  4E 80 00 20 */	blr 

.global JUTTexture_NS_storeTIMG
JUTTexture_NS_storeTIMG:
/* 802DE2A8 002DB1E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE2AC 002DB1EC  7C 08 02 A6 */	mflr r0
/* 802DE2B0 002DB1F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE2B4 002DB1F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE2B8 002DB1F8  48 08 3F 25 */	bl _savegpr_29
/* 802DE2BC 002DB1FC  7C 7F 1B 78 */	mr r31, r3
/* 802DE2C0 002DB200  28 04 00 00 */	cmplwi r4, 0
/* 802DE2C4 002DB204  41 82 01 70 */	beq lbl_802DE434
/* 802DE2C8 002DB208  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802DE2CC 002DB20C  28 00 00 10 */	cmplwi r0, 0x10
/* 802DE2D0 002DB210  40 80 01 64 */	bge lbl_802DE434
/* 802DE2D4 002DB214  90 9F 00 20 */	stw r4, 0x20(r31)
/* 802DE2D8 002DB218  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE2DC 002DB21C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802DE2E0 002DB220  7C 03 02 14 */	add r0, r3, r0
/* 802DE2E4 002DB224  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802DE2E8 002DB228  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE2EC 002DB22C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802DE2F0 002DB230  28 00 00 00 */	cmplwi r0, 0
/* 802DE2F4 002DB234  40 82 00 0C */	bne lbl_802DE300
/* 802DE2F8 002DB238  38 03 00 20 */	addi r0, r3, 0x20
/* 802DE2FC 002DB23C  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_802DE300:
/* 802DE300 002DB240  38 00 00 00 */	li r0, 0
/* 802DE304 002DB244  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 802DE308 002DB248  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 802DE30C 002DB24C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE310 002DB250  88 03 00 06 */	lbz r0, 6(r3)
/* 802DE314 002DB254  98 1F 00 30 */	stb r0, 0x30(r31)
/* 802DE318 002DB258  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE31C 002DB25C  88 03 00 07 */	lbz r0, 7(r3)
/* 802DE320 002DB260  98 1F 00 31 */	stb r0, 0x31(r31)
/* 802DE324 002DB264  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE328 002DB268  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802DE32C 002DB26C  98 1F 00 32 */	stb r0, 0x32(r31)
/* 802DE330 002DB270  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE334 002DB274  88 03 00 15 */	lbz r0, 0x15(r3)
/* 802DE338 002DB278  98 1F 00 33 */	stb r0, 0x33(r31)
/* 802DE33C 002DB27C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE340 002DB280  88 03 00 16 */	lbz r0, 0x16(r3)
/* 802DE344 002DB284  7C 00 07 74 */	extsb r0, r0
/* 802DE348 002DB288  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 802DE34C 002DB28C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE350 002DB290  88 03 00 17 */	lbz r0, 0x17(r3)
/* 802DE354 002DB294  7C 00 07 74 */	extsb r0, r0
/* 802DE358 002DB298  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 802DE35C 002DB29C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE360 002DB2A0  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 802DE364 002DB2A4  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 802DE368 002DB2A8  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 802DE36C 002DB2AC  A0 E8 00 0A */	lhz r7, 0xa(r8)
/* 802DE370 002DB2B0  28 07 00 00 */	cmplwi r7, 0
/* 802DE374 002DB2B4  40 82 00 10 */	bne lbl_802DE384
/* 802DE378 002DB2B8  7F E3 FB 78 */	mr r3, r31
/* 802DE37C 002DB2BC  48 00 02 DD */	bl JUTTexture_NS_initTexObj
/* 802DE380 002DB2C0  48 00 00 B4 */	b lbl_802DE434
lbl_802DE384:
/* 802DE384 002DB2C4  28 07 01 00 */	cmplwi r7, 0x100
/* 802DE388 002DB2C8  40 81 00 24 */	ble lbl_802DE3AC
/* 802DE38C 002DB2CC  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 802DE390 002DB2D0  54 A0 F0 02 */	slwi r0, r5, 0x1e
/* 802DE394 002DB2D4  54 63 0F FE */	srwi r3, r3, 0x1f
/* 802DE398 002DB2D8  7C 03 00 50 */	subf r0, r3, r0
/* 802DE39C 002DB2DC  54 00 10 3E */	rotlwi r0, r0, 2
/* 802DE3A0 002DB2E0  7C 60 1A 14 */	add r3, r0, r3
/* 802DE3A4 002DB2E4  3B A3 00 10 */	addi r29, r3, 0x10
/* 802DE3A8 002DB2E8  48 00 00 08 */	b lbl_802DE3B0
lbl_802DE3AC:
/* 802DE3AC 002DB2EC  54 BD 06 3E */	clrlwi r29, r5, 0x18
lbl_802DE3B0:
/* 802DE3B0 002DB2F0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802DE3B4 002DB2F4  28 03 00 00 */	cmplwi r3, 0
/* 802DE3B8 002DB2F8  41 82 00 10 */	beq lbl_802DE3C8
/* 802DE3BC 002DB2FC  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 802DE3C0 002DB300  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802DE3C4 002DB304  40 82 00 4C */	bne lbl_802DE410
lbl_802DE3C8:
/* 802DE3C8 002DB308  38 60 00 18 */	li r3, 0x18
/* 802DE3CC 002DB30C  4B FF 08 81 */	bl __nw__FUl
/* 802DE3D0 002DB310  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DE3D4 002DB314  41 82 00 24 */	beq lbl_802DE3F8
/* 802DE3D8 002DB318  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 802DE3DC 002DB31C  7F A4 EB 78 */	mr r4, r29
/* 802DE3E0 002DB320  88 A8 00 09 */	lbz r5, 9(r8)
/* 802DE3E4 002DB324  88 C8 00 01 */	lbz r6, 1(r8)
/* 802DE3E8 002DB328  A0 E8 00 0A */	lhz r7, 0xa(r8)
/* 802DE3EC 002DB32C  80 08 00 0C */	lwz r0, 0xc(r8)
/* 802DE3F0 002DB330  7D 08 02 14 */	add r8, r8, r0
/* 802DE3F4 002DB334  48 00 05 29 */	bl JUTPalette_NS_storeTLUT_X1_
lbl_802DE3F8:
/* 802DE3F8 002DB338  93 DF 00 28 */	stw r30, 0x28(r31)
/* 802DE3FC 002DB33C  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 802DE400 002DB340  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802DE404 002DB344  60 00 00 02 */	ori r0, r0, 2
/* 802DE408 002DB348  98 1F 00 3B */	stb r0, 0x3b(r31)
/* 802DE40C 002DB34C  48 00 00 1C */	b lbl_802DE428
lbl_802DE410:
/* 802DE410 002DB350  7F A4 EB 78 */	mr r4, r29
/* 802DE414 002DB354  88 A8 00 09 */	lbz r5, 9(r8)
/* 802DE418 002DB358  88 C8 00 01 */	lbz r6, 1(r8)
/* 802DE41C 002DB35C  80 08 00 0C */	lwz r0, 0xc(r8)
/* 802DE420 002DB360  7D 08 02 14 */	add r8, r8, r0
/* 802DE424 002DB364  48 00 04 F9 */	bl JUTPalette_NS_storeTLUT_X1_
lbl_802DE428:
/* 802DE428 002DB368  7F E3 FB 78 */	mr r3, r31
/* 802DE42C 002DB36C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802DE430 002DB370  48 00 01 81 */	bl JUTTexture_NS_attachPalette
lbl_802DE434:
/* 802DE434 002DB374  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE438 002DB378  48 08 3D F1 */	bl _restgpr_29
/* 802DE43C 002DB37C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE440 002DB380  7C 08 03 A6 */	mtlr r0
/* 802DE444 002DB384  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE448 002DB388  4E 80 00 20 */	blr 

.global JUTTexture_NS_storeTIMG_X1_
JUTTexture_NS_storeTIMG_X1_:
/* 802DE44C 002DB38C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE450 002DB390  7C 08 02 A6 */	mflr r0
/* 802DE454 002DB394  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE458 002DB398  28 05 00 00 */	cmplwi r5, 0
/* 802DE45C 002DB39C  41 82 00 0C */	beq lbl_802DE468
/* 802DE460 002DB3A0  88 C5 00 0C */	lbz r6, 0xc(r5)
/* 802DE464 002DB3A4  48 00 00 08 */	b lbl_802DE46C
lbl_802DE468:
/* 802DE468 002DB3A8  38 C0 00 00 */	li r6, 0
lbl_802DE46C:
/* 802DE46C 002DB3AC  48 00 00 15 */	bl JUTTexture_NS_storeTIMG_X2_
/* 802DE470 002DB3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE474 002DB3B4  7C 08 03 A6 */	mtlr r0
/* 802DE478 002DB3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE47C 002DB3BC  4E 80 00 20 */	blr 

.global JUTTexture_NS_storeTIMG_X2_
JUTTexture_NS_storeTIMG_X2_:
/* 802DE480 002DB3C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE484 002DB3C4  7C 08 02 A6 */	mflr r0
/* 802DE488 002DB3C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE48C 002DB3CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE490 002DB3D0  48 08 3D 4D */	bl _savegpr_29
/* 802DE494 002DB3D4  7C 7D 1B 78 */	mr r29, r3
/* 802DE498 002DB3D8  7C BE 2B 78 */	mr r30, r5
/* 802DE49C 002DB3DC  7C DF 33 78 */	mr r31, r6
/* 802DE4A0 002DB3E0  28 04 00 00 */	cmplwi r4, 0
/* 802DE4A4 002DB3E4  41 82 00 F4 */	beq lbl_802DE598
/* 802DE4A8 002DB3E8  90 9D 00 20 */	stw r4, 0x20(r29)
/* 802DE4AC 002DB3EC  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE4B0 002DB3F0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802DE4B4 002DB3F4  7C 03 02 14 */	add r0, r3, r0
/* 802DE4B8 002DB3F8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 802DE4BC 002DB3FC  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE4C0 002DB400  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802DE4C4 002DB404  28 00 00 00 */	cmplwi r0, 0
/* 802DE4C8 002DB408  40 82 00 0C */	bne lbl_802DE4D4
/* 802DE4CC 002DB40C  38 03 00 20 */	addi r0, r3, 0x20
/* 802DE4D0 002DB410  90 1D 00 24 */	stw r0, 0x24(r29)
lbl_802DE4D4:
/* 802DE4D4 002DB414  88 1D 00 3B */	lbz r0, 0x3b(r29)
/* 802DE4D8 002DB418  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802DE4DC 002DB41C  41 82 00 0C */	beq lbl_802DE4E8
/* 802DE4E0 002DB420  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 802DE4E4 002DB424  4B FF 08 59 */	bl __dl__FPv
lbl_802DE4E8:
/* 802DE4E8 002DB428  93 DD 00 28 */	stw r30, 0x28(r29)
/* 802DE4EC 002DB42C  88 1D 00 3B */	lbz r0, 0x3b(r29)
/* 802DE4F0 002DB430  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802DE4F4 002DB434  98 1D 00 3B */	stb r0, 0x3b(r29)
/* 802DE4F8 002DB438  38 00 00 00 */	li r0, 0
/* 802DE4FC 002DB43C  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802DE500 002DB440  28 1E 00 00 */	cmplwi r30, 0
/* 802DE504 002DB444  41 82 00 30 */	beq lbl_802DE534
/* 802DE508 002DB448  9B FD 00 3A */	stb r31, 0x3a(r29)
/* 802DE50C 002DB44C  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 802DE510 002DB450  7C 1F 00 00 */	cmpw r31, r0
/* 802DE514 002DB454  41 82 00 20 */	beq lbl_802DE534
/* 802DE518 002DB458  88 BE 00 0D */	lbz r5, 0xd(r30)
/* 802DE51C 002DB45C  88 DE 00 16 */	lbz r6, 0x16(r30)
/* 802DE520 002DB460  A0 FE 00 14 */	lhz r7, 0x14(r30)
/* 802DE524 002DB464  81 1E 00 10 */	lwz r8, 0x10(r30)
/* 802DE528 002DB468  7F C3 F3 78 */	mr r3, r30
/* 802DE52C 002DB46C  7F E4 FB 78 */	mr r4, r31
/* 802DE530 002DB470  48 00 03 ED */	bl JUTPalette_NS_storeTLUT_X1_
lbl_802DE534:
/* 802DE534 002DB474  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE538 002DB478  88 03 00 06 */	lbz r0, 6(r3)
/* 802DE53C 002DB47C  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802DE540 002DB480  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE544 002DB484  88 03 00 07 */	lbz r0, 7(r3)
/* 802DE548 002DB488  98 1D 00 31 */	stb r0, 0x31(r29)
/* 802DE54C 002DB48C  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE550 002DB490  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802DE554 002DB494  98 1D 00 32 */	stb r0, 0x32(r29)
/* 802DE558 002DB498  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE55C 002DB49C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 802DE560 002DB4A0  98 1D 00 33 */	stb r0, 0x33(r29)
/* 802DE564 002DB4A4  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE568 002DB4A8  88 03 00 16 */	lbz r0, 0x16(r3)
/* 802DE56C 002DB4AC  7C 00 07 74 */	extsb r0, r0
/* 802DE570 002DB4B0  B0 1D 00 34 */	sth r0, 0x34(r29)
/* 802DE574 002DB4B4  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE578 002DB4B8  88 03 00 17 */	lbz r0, 0x17(r3)
/* 802DE57C 002DB4BC  7C 00 07 74 */	extsb r0, r0
/* 802DE580 002DB4C0  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 802DE584 002DB4C4  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE588 002DB4C8  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 802DE58C 002DB4CC  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 802DE590 002DB4D0  7F A3 EB 78 */	mr r3, r29
/* 802DE594 002DB4D4  48 00 00 75 */	bl JUTTexture_NS_init
lbl_802DE598:
/* 802DE598 002DB4D8  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE59C 002DB4DC  48 08 3C 8D */	bl _restgpr_29
/* 802DE5A0 002DB4E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE5A4 002DB4E4  7C 08 03 A6 */	mtlr r0
/* 802DE5A8 002DB4E8  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE5AC 002DB4EC  4E 80 00 20 */	blr 

.global JUTTexture_NS_attachPalette
JUTTexture_NS_attachPalette:
/* 802DE5B0 002DB4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE5B4 002DB4F4  7C 08 02 A6 */	mflr r0
/* 802DE5B8 002DB4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE5BC 002DB4FC  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 802DE5C0 002DB500  88 05 00 08 */	lbz r0, 8(r5)
/* 802DE5C4 002DB504  28 00 00 00 */	cmplwi r0, 0
/* 802DE5C8 002DB508  41 82 00 30 */	beq lbl_802DE5F8
/* 802DE5CC 002DB50C  28 04 00 00 */	cmplwi r4, 0
/* 802DE5D0 002DB510  40 82 00 18 */	bne lbl_802DE5E8
/* 802DE5D4 002DB514  80 03 00 28 */	lwz r0, 0x28(r3)
/* 802DE5D8 002DB518  28 00 00 00 */	cmplwi r0, 0
/* 802DE5DC 002DB51C  41 82 00 0C */	beq lbl_802DE5E8
/* 802DE5E0 002DB520  90 03 00 2C */	stw r0, 0x2c(r3)
/* 802DE5E4 002DB524  48 00 00 08 */	b lbl_802DE5EC
lbl_802DE5E8:
/* 802DE5E8 002DB528  90 83 00 2C */	stw r4, 0x2c(r3)
lbl_802DE5EC:
/* 802DE5EC 002DB52C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802DE5F0 002DB530  88 84 00 0C */	lbz r4, 0xc(r4)
/* 802DE5F4 002DB534  48 00 01 51 */	bl JUTTexture_NS_initTexObj_X1_
lbl_802DE5F8:
/* 802DE5F8 002DB538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE5FC 002DB53C  7C 08 03 A6 */	mtlr r0
/* 802DE600 002DB540  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE604 002DB544  4E 80 00 20 */	blr 

.global JUTTexture_NS_init
JUTTexture_NS_init:
/* 802DE608 002DB548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE60C 002DB54C  7C 08 02 A6 */	mflr r0
/* 802DE610 002DB550  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE614 002DB554  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802DE618 002DB558  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 802DE61C 002DB55C  28 00 00 00 */	cmplwi r0, 0
/* 802DE620 002DB560  40 82 00 0C */	bne lbl_802DE62C
/* 802DE624 002DB564  48 00 00 35 */	bl JUTTexture_NS_initTexObj
/* 802DE628 002DB568  48 00 00 20 */	b lbl_802DE648
lbl_802DE62C:
/* 802DE62C 002DB56C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 802DE630 002DB570  28 00 00 00 */	cmplwi r0, 0
/* 802DE634 002DB574  41 82 00 14 */	beq lbl_802DE648
/* 802DE638 002DB578  90 03 00 2C */	stw r0, 0x2c(r3)
/* 802DE63C 002DB57C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802DE640 002DB580  88 84 00 0C */	lbz r4, 0xc(r4)
/* 802DE644 002DB584  48 00 01 01 */	bl JUTTexture_NS_initTexObj_X1_
lbl_802DE648:
/* 802DE648 002DB588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE64C 002DB58C  7C 08 03 A6 */	mtlr r0
/* 802DE650 002DB590  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE654 002DB594  4E 80 00 20 */	blr 

.global JUTTexture_NS_initTexObj
JUTTexture_NS_initTexObj:
/* 802DE658 002DB598  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DE65C 002DB59C  7C 08 02 A6 */	mflr r0
/* 802DE660 002DB5A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DE664 002DB5A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802DE668 002DB5A8  7C 7F 1B 78 */	mr r31, r3
/* 802DE66C 002DB5AC  80 E3 00 20 */	lwz r7, 0x20(r3)
/* 802DE670 002DB5B0  88 67 00 10 */	lbz r3, 0x10(r7)
/* 802DE674 002DB5B4  30 03 FF FF */	addic r0, r3, -1
/* 802DE678 002DB5B8  7D 40 19 10 */	subfe r10, r0, r3
/* 802DE67C 002DB5BC  80 67 00 1C */	lwz r3, 0x1c(r7)
/* 802DE680 002DB5C0  28 03 00 00 */	cmplwi r3, 0
/* 802DE684 002DB5C4  38 00 00 20 */	li r0, 0x20
/* 802DE688 002DB5C8  41 82 00 08 */	beq lbl_802DE690
/* 802DE68C 002DB5CC  7C 60 1B 78 */	mr r0, r3
lbl_802DE690:
/* 802DE690 002DB5D0  7C 87 02 14 */	add r4, r7, r0
/* 802DE694 002DB5D4  7F E3 FB 78 */	mr r3, r31
/* 802DE698 002DB5D8  A0 A7 00 02 */	lhz r5, 2(r7)
/* 802DE69C 002DB5DC  A0 C7 00 04 */	lhz r6, 4(r7)
/* 802DE6A0 002DB5E0  88 E7 00 00 */	lbz r7, 0(r7)
/* 802DE6A4 002DB5E4  89 1F 00 30 */	lbz r8, 0x30(r31)
/* 802DE6A8 002DB5E8  89 3F 00 31 */	lbz r9, 0x31(r31)
/* 802DE6AC 002DB5EC  48 07 F7 95 */	bl GXInitTexObj
/* 802DE6B0 002DB5F0  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 802DE6B4 002DB5F4  7F E3 FB 78 */	mr r3, r31
/* 802DE6B8 002DB5F8  88 9F 00 32 */	lbz r4, 0x32(r31)
/* 802DE6BC 002DB5FC  88 BF 00 33 */	lbz r5, 0x33(r31)
/* 802DE6C0 002DB600  A0 1F 00 34 */	lhz r0, 0x34(r31)
/* 802DE6C4 002DB604  C8 62 C5 E0 */	lfd f3, lbl_80455FE0-_SDA2_BASE_(r2)
/* 802DE6C8 002DB608  90 01 00 0C */	stw r0, 0xc(r1)
/* 802DE6CC 002DB60C  3C C0 43 30 */	lis r6, 0x4330
/* 802DE6D0 002DB610  90 C1 00 08 */	stw r6, 8(r1)
/* 802DE6D4 002DB614  C8 01 00 08 */	lfd f0, 8(r1)
/* 802DE6D8 002DB618  EC 00 18 28 */	fsubs f0, f0, f3
/* 802DE6DC 002DB61C  C0 42 C5 D8 */	lfs f2, lbl_80455FD8-_SDA2_BASE_(r2)
/* 802DE6E0 002DB620  EC 20 00 B2 */	fmuls f1, f0, f2
/* 802DE6E4 002DB624  A0 1F 00 36 */	lhz r0, 0x36(r31)
/* 802DE6E8 002DB628  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE6EC 002DB62C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802DE6F0 002DB630  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802DE6F4 002DB634  EC 00 18 28 */	fsubs f0, f0, f3
/* 802DE6F8 002DB638  EC 40 00 B2 */	fmuls f2, f0, f2
/* 802DE6FC 002DB63C  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 802DE700 002DB640  C8 62 C5 E8 */	lfd f3, lbl_80455FE8-_SDA2_BASE_(r2)
/* 802DE704 002DB644  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802DE708 002DB648  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DE70C 002DB64C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802DE710 002DB650  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802DE714 002DB654  EC 60 18 28 */	fsubs f3, f0, f3
/* 802DE718 002DB658  C0 02 C5 DC */	lfs f0, lbl_80455FDC-_SDA2_BASE_(r2)
/* 802DE71C 002DB65C  EC 63 00 24 */	fdivs f3, f3, f0
/* 802DE720 002DB660  88 C8 00 12 */	lbz r6, 0x12(r8)
/* 802DE724 002DB664  88 E8 00 11 */	lbz r7, 0x11(r8)
/* 802DE728 002DB668  89 08 00 13 */	lbz r8, 0x13(r8)
/* 802DE72C 002DB66C  48 07 F9 A9 */	bl GXInitTexObjLOD
/* 802DE730 002DB670  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802DE734 002DB674  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DE738 002DB678  7C 08 03 A6 */	mtlr r0
/* 802DE73C 002DB67C  38 21 00 30 */	addi r1, r1, 0x30
/* 802DE740 002DB680  4E 80 00 20 */	blr 

.global JUTTexture_NS_initTexObj_X1_
JUTTexture_NS_initTexObj_X1_:
/* 802DE744 002DB684  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DE748 002DB688  7C 08 02 A6 */	mflr r0
/* 802DE74C 002DB68C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DE750 002DB690  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802DE754 002DB694  7C 7F 1B 78 */	mr r31, r3
/* 802DE758 002DB698  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802DE75C 002DB69C  88 63 00 10 */	lbz r3, 0x10(r3)
/* 802DE760 002DB6A0  30 03 FF FF */	addic r0, r3, -1
/* 802DE764 002DB6A4  7D 40 19 10 */	subfe r10, r0, r3
/* 802DE768 002DB6A8  98 9F 00 3A */	stb r4, 0x3a(r31)
/* 802DE76C 002DB6AC  80 FF 00 20 */	lwz r7, 0x20(r31)
/* 802DE770 002DB6B0  80 67 00 1C */	lwz r3, 0x1c(r7)
/* 802DE774 002DB6B4  28 03 00 00 */	cmplwi r3, 0
/* 802DE778 002DB6B8  38 00 00 20 */	li r0, 0x20
/* 802DE77C 002DB6BC  41 82 00 08 */	beq lbl_802DE784
/* 802DE780 002DB6C0  7C 60 1B 78 */	mr r0, r3
lbl_802DE784:
/* 802DE784 002DB6C4  7C 07 02 14 */	add r0, r7, r0
/* 802DE788 002DB6C8  90 81 00 08 */	stw r4, 8(r1)
/* 802DE78C 002DB6CC  7F E3 FB 78 */	mr r3, r31
/* 802DE790 002DB6D0  7C 04 03 78 */	mr r4, r0
/* 802DE794 002DB6D4  A0 A7 00 02 */	lhz r5, 2(r7)
/* 802DE798 002DB6D8  A0 C7 00 04 */	lhz r6, 4(r7)
/* 802DE79C 002DB6DC  88 E7 00 00 */	lbz r7, 0(r7)
/* 802DE7A0 002DB6E0  89 1F 00 30 */	lbz r8, 0x30(r31)
/* 802DE7A4 002DB6E4  89 3F 00 31 */	lbz r9, 0x31(r31)
/* 802DE7A8 002DB6E8  48 07 F8 E5 */	bl GXInitTexObjCI
/* 802DE7AC 002DB6EC  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 802DE7B0 002DB6F0  7F E3 FB 78 */	mr r3, r31
/* 802DE7B4 002DB6F4  88 9F 00 32 */	lbz r4, 0x32(r31)
/* 802DE7B8 002DB6F8  88 BF 00 33 */	lbz r5, 0x33(r31)
/* 802DE7BC 002DB6FC  A0 1F 00 34 */	lhz r0, 0x34(r31)
/* 802DE7C0 002DB700  C8 62 C5 E0 */	lfd f3, lbl_80455FE0-_SDA2_BASE_(r2)
/* 802DE7C4 002DB704  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE7C8 002DB708  3C C0 43 30 */	lis r6, 0x4330
/* 802DE7CC 002DB70C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802DE7D0 002DB710  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802DE7D4 002DB714  EC 00 18 28 */	fsubs f0, f0, f3
/* 802DE7D8 002DB718  C0 42 C5 D8 */	lfs f2, lbl_80455FD8-_SDA2_BASE_(r2)
/* 802DE7DC 002DB71C  EC 20 00 B2 */	fmuls f1, f0, f2
/* 802DE7E0 002DB720  A0 1F 00 36 */	lhz r0, 0x36(r31)
/* 802DE7E4 002DB724  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DE7E8 002DB728  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802DE7EC 002DB72C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802DE7F0 002DB730  EC 00 18 28 */	fsubs f0, f0, f3
/* 802DE7F4 002DB734  EC 40 00 B2 */	fmuls f2, f0, f2
/* 802DE7F8 002DB738  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 802DE7FC 002DB73C  C8 62 C5 E8 */	lfd f3, lbl_80455FE8-_SDA2_BASE_(r2)
/* 802DE800 002DB740  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802DE804 002DB744  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE808 002DB748  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802DE80C 002DB74C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802DE810 002DB750  EC 60 18 28 */	fsubs f3, f0, f3
/* 802DE814 002DB754  C0 02 C5 DC */	lfs f0, lbl_80455FDC-_SDA2_BASE_(r2)
/* 802DE818 002DB758  EC 63 00 24 */	fdivs f3, f3, f0
/* 802DE81C 002DB75C  88 C8 00 12 */	lbz r6, 0x12(r8)
/* 802DE820 002DB760  88 E8 00 11 */	lbz r7, 0x11(r8)
/* 802DE824 002DB764  89 08 00 13 */	lbz r8, 0x13(r8)
/* 802DE828 002DB768  48 07 F8 AD */	bl GXInitTexObjLOD
/* 802DE82C 002DB76C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802DE830 002DB770  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DE834 002DB774  7C 08 03 A6 */	mtlr r0
/* 802DE838 002DB778  38 21 00 30 */	addi r1, r1, 0x30
/* 802DE83C 002DB77C  4E 80 00 20 */	blr 

.global JUTTexture_NS_load
JUTTexture_NS_load:
/* 802DE840 002DB780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE844 002DB784  7C 08 02 A6 */	mflr r0
/* 802DE848 002DB788  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE84C 002DB78C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE850 002DB790  93 C1 00 08 */	stw r30, 8(r1)
/* 802DE854 002DB794  7C 7E 1B 78 */	mr r30, r3
/* 802DE858 002DB798  7C 9F 23 78 */	mr r31, r4
/* 802DE85C 002DB79C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802DE860 002DB7A0  28 03 00 00 */	cmplwi r3, 0
/* 802DE864 002DB7A4  41 82 00 08 */	beq lbl_802DE86C
/* 802DE868 002DB7A8  48 00 00 F5 */	bl JUTPalette_NS_load
lbl_802DE86C:
/* 802DE86C 002DB7AC  7F C3 F3 78 */	mr r3, r30
/* 802DE870 002DB7B0  7F E4 FB 78 */	mr r4, r31
/* 802DE874 002DB7B4  48 07 FB A1 */	bl GXLoadTexObj
/* 802DE878 002DB7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE87C 002DB7BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DE880 002DB7C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE884 002DB7C4  7C 08 03 A6 */	mtlr r0
/* 802DE888 002DB7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE88C 002DB7CC  4E 80 00 20 */	blr 

