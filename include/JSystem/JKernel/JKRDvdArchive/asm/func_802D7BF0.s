/* __ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection __ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection::__ct(long, JKRArchive::EMountDirection) */
/* JKRDvdArchive */
/* 802D7BF0 002D4B30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D7BF4 002D4B34  7C 08 02 A6 */	mflr r0
/* 802D7BF8 002D4B38  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D7BFC 002D4B3C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7C00 002D4B40  48 08 A5 DD */	bl _savegpr_29
/* 802D7C04 002D4B44  7C 7D 1B 78 */	mr r29, r3
/* 802D7C08 002D4B48  7C 9E 23 78 */	mr r30, r4
/* 802D7C0C 002D4B4C  7C BF 2B 78 */	mr r31, r5
/* 802D7C10 002D4B50  38 A0 00 03 */	li r5, 3
/* 802D7C14 002D4B54  4B FF E6 81 */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 802D7C18 002D4B58  3C 60 80 3D */	lis r3, lbl_803CC398@ha
/* 802D7C1C 002D4B5C  38 03 C3 98 */	addi r0, r3, lbl_803CC398@l
/* 802D7C20 002D4B60  90 1D 00 00 */	stw r0, 0(r29)
/* 802D7C24 002D4B64  93 FD 00 60 */	stw r31, 0x60(r29)
/* 802D7C28 002D4B68  7F A3 EB 78 */	mr r3, r29
/* 802D7C2C 002D4B6C  7F C4 F3 78 */	mr r4, r30
/* 802D7C30 002D4B70  48 00 01 85 */	bl open__13JKRDvdArchiveFl
/* 802D7C34 002D4B74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D7C38 002D4B78  40 82 00 0C */	bne lbl_802D7C44
/* 802D7C3C 002D4B7C  7F A3 EB 78 */	mr r3, r29
/* 802D7C40 002D4B80  48 00 00 40 */	b lbl_802D7C80
lbl_802D7C44:
/* 802D7C44 002D4B84  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 802D7C48 002D4B88  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 802D7C4C 002D4B8C  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802D7C50 002D4B90  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 802D7C54 002D4B94  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 802D7C58 002D4B98  80 03 00 04 */	lwz r0, 4(r3)
/* 802D7C5C 002D4B9C  7C 04 02 14 */	add r0, r4, r0
/* 802D7C60 002D4BA0  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802D7C64 002D4BA4  3C 60 80 43 */	lis r3, lbl_80434354@ha
/* 802D7C68 002D4BA8  38 63 43 54 */	addi r3, r3, lbl_80434354@l
/* 802D7C6C 002D4BAC  38 9D 00 18 */	addi r4, r29, 0x18
/* 802D7C70 002D4BB0  48 00 43 81 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802D7C74 002D4BB4  38 00 00 01 */	li r0, 1
/* 802D7C78 002D4BB8  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D7C7C 002D4BBC  7F A3 EB 78 */	mr r3, r29
lbl_802D7C80:
/* 802D7C80 002D4BC0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7C84 002D4BC4  48 08 A5 A5 */	bl _restgpr_29
/* 802D7C88 002D4BC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D7C8C 002D4BCC  7C 08 03 A6 */	mtlr r0
/* 802D7C90 002D4BD0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D7C94 002D4BD4  4E 80 00 20 */	blr
