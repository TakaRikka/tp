/* removeResourceAll__14JKRCompArchiveFv __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection::removeResourceAll(void) */
/* missing reference */
/* 802D9260 002D61A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D9264 002D61A4  7C 08 02 A6 */	mflr r0
/* 802D9268 002D61A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D926C 002D61AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9270 002D61B0  48 08 8F 69 */	bl _savegpr_28
/* 802D9274 002D61B4  7C 7C 1B 78 */	mr r28, r3
/* 802D9278 002D61B8  80 03 00 44 */	lwz r0, 0x44(r3)
/* 802D927C 002D61BC  28 00 00 00 */	cmplwi r0, 0
/* 802D9280 002D61C0  41 82 00 5C */	beq lbl_802D92DC
/* 802D9284 002D61C4  88 1C 00 3C */	lbz r0, 0x3c(r28)
/* 802D9288 002D61C8  28 00 00 01 */	cmplwi r0, 1
/* 802D928C 002D61CC  41 82 00 50 */	beq lbl_802D92DC
/* 802D9290 002D61D0  83 DC 00 4C */	lwz r30, 0x4c(r28)
/* 802D9294 002D61D4  3B A0 00 00 */	li r29, 0
/* 802D9298 002D61D8  3B E0 00 00 */	li r31, 0
/* 802D929C 002D61DC  48 00 00 30 */	b lbl_802D92CC
lbl_802D92A0:
/* 802D92A0 002D61E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D92A4 002D61E4  54 00 46 3E */	srwi r0, r0, 0x18
/* 802D92A8 002D61E8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802D92AC 002D61EC  28 03 00 00 */	cmplwi r3, 0
/* 802D92B0 002D61F0  41 82 00 18 */	beq lbl_802D92C8
/* 802D92B4 002D61F4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 802D92B8 002D61F8  40 82 00 0C */	bne lbl_802D92C4
/* 802D92BC 002D61FC  80 9C 00 38 */	lwz r4, 0x38(r28)
/* 802D92C0 002D6200  4B FF 52 41 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D92C4:
/* 802D92C4 002D6204  93 FE 00 10 */	stw r31, 0x10(r30)
lbl_802D92C8:
/* 802D92C8 002D6208  3B BD 00 01 */	addi r29, r29, 1
lbl_802D92CC:
/* 802D92CC 002D620C  80 7C 00 44 */	lwz r3, 0x44(r28)
/* 802D92D0 002D6210  80 03 00 08 */	lwz r0, 8(r3)
/* 802D92D4 002D6214  7C 1D 00 40 */	cmplw r29, r0
/* 802D92D8 002D6218  41 80 FF C8 */	blt lbl_802D92A0
lbl_802D92DC:
/* 802D92DC 002D621C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D92E0 002D6220  48 08 8F 45 */	bl _restgpr_28
/* 802D92E4 002D6224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D92E8 002D6228  7C 08 03 A6 */	mtlr r0
/* 802D92EC 002D622C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D92F0 002D6230  4E 80 00 20 */	blr
