/* writeToAram__13JKRAramStreamFP20JKRAramStreamCommand __ct__13JKRAramStreamFl::writeToAram(JKRAramStreamCommand *) */
/* JKRAramStream_NS_writeToAram */
/* 802D3CE0 002D0C20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D3CE4 002D0C24  7C 08 02 A6 */	mflr r0
/* 802D3CE8 002D0C28  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D3CEC 002D0C2C  39 61 00 30 */	addi r11, r1, 0x30
/* 802D3CF0 002D0C30  48 08 E4 D9 */	bl _savegpr_24
/* 802D3CF4 002D0C34  7C 78 1B 78 */	mr r24, r3
/* 802D3CF8 002D0C38  83 C3 00 08 */	lwz r30, 8(r3)
/* 802D3CFC 002D0C3C  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 802D3D00 002D0C40  3B 80 00 00 */	li r28, 0
/* 802D3D04 002D0C44  83 63 00 04 */	lwz r27, 4(r3)
/* 802D3D08 002D0C48  83 43 00 1C */	lwz r26, 0x1c(r3)
/* 802D3D0C 002D0C4C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802D3D10 002D0C50  83 23 00 24 */	lwz r25, 0x24(r3)
/* 802D3D14 002D0C54  28 1A 00 00 */	cmplwi r26, 0
/* 802D3D18 002D0C58  41 82 00 28 */	beq lbl_802D3D40
/* 802D3D1C 002D0C5C  28 00 00 00 */	cmplwi r0, 0
/* 802D3D20 002D0C60  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 802D3D24 002D0C64  3B E3 80 00 */	addi r31, r3, 0x00008000@l
/* 802D3D28 002D0C68  41 82 00 08 */	beq lbl_802D3D30
/* 802D3D2C 002D0C6C  7C 1F 03 78 */	mr r31, r0
lbl_802D3D30:
/* 802D3D30 002D0C70  93 F8 00 20 */	stw r31, 0x20(r24)
/* 802D3D34 002D0C74  38 00 00 00 */	li r0, 0
/* 802D3D38 002D0C78  98 18 00 28 */	stb r0, 0x28(r24)
/* 802D3D3C 002D0C7C  48 00 00 60 */	b lbl_802D3D9C
lbl_802D3D40:
/* 802D3D40 002D0C80  28 00 00 00 */	cmplwi r0, 0
/* 802D3D44 002D0C84  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 802D3D48 002D0C88  3B E3 80 00 */	addi r31, r3, 0x00008000@l
/* 802D3D4C 002D0C8C  41 82 00 08 */	beq lbl_802D3D54
/* 802D3D50 002D0C90  7C 1F 03 78 */	mr r31, r0
lbl_802D3D54:
/* 802D3D54 002D0C94  28 19 00 00 */	cmplwi r25, 0
/* 802D3D58 002D0C98  41 82 00 20 */	beq lbl_802D3D78
/* 802D3D5C 002D0C9C  7F E3 FB 78 */	mr r3, r31
/* 802D3D60 002D0CA0  38 80 FF E0 */	li r4, -32
/* 802D3D64 002D0CA4  7F 25 CB 78 */	mr r5, r25
/* 802D3D68 002D0CA8  4B FF A7 0D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D3D6C 002D0CAC  7C 7A 1B 78 */	mr r26, r3
/* 802D3D70 002D0CB0  93 58 00 1C */	stw r26, 0x1c(r24)
/* 802D3D74 002D0CB4  48 00 00 1C */	b lbl_802D3D90
lbl_802D3D78:
/* 802D3D78 002D0CB8  80 6D 8D F0 */	lwz r3, lbl_80451370-_SDA_BASE_(r13)
/* 802D3D7C 002D0CBC  7F E4 FB 78 */	mr r4, r31
/* 802D3D80 002D0CC0  38 A0 FF E0 */	li r5, -32
/* 802D3D84 002D0CC4  4B FF A7 51 */	bl alloc__7JKRHeapFUli
/* 802D3D88 002D0CC8  7C 7A 1B 78 */	mr r26, r3
/* 802D3D8C 002D0CCC  93 58 00 1C */	stw r26, 0x1c(r24)
lbl_802D3D90:
/* 802D3D90 002D0CD0  93 F8 00 20 */	stw r31, 0x20(r24)
/* 802D3D94 002D0CD4  38 00 00 01 */	li r0, 1
/* 802D3D98 002D0CD8  98 18 00 28 */	stb r0, 0x28(r24)
lbl_802D3D9C:
/* 802D3D9C 002D0CDC  28 1A 00 00 */	cmplwi r26, 0
/* 802D3DA0 002D0CE0  40 82 00 54 */	bne lbl_802D3DF4
/* 802D3DA4 002D0CE4  28 19 00 00 */	cmplwi r25, 0
/* 802D3DA8 002D0CE8  40 82 00 1C */	bne lbl_802D3DC4
/* 802D3DAC 002D0CEC  80 6D 8D F4 */	lwz r3, lbl_80451374-_SDA_BASE_(r13)
/* 802D3DB0 002D0CF0  81 83 00 00 */	lwz r12, 0(r3)
/* 802D3DB4 002D0CF4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D3DB8 002D0CF8  7D 89 03 A6 */	mtctr r12
/* 802D3DBC 002D0CFC  4E 80 04 21 */	bctrl
/* 802D3DC0 002D0D00  48 00 00 18 */	b lbl_802D3DD8
lbl_802D3DC4:
/* 802D3DC4 002D0D04  7F 23 CB 78 */	mr r3, r25
/* 802D3DC8 002D0D08  81 99 00 00 */	lwz r12, 0(r25)
/* 802D3DCC 002D0D0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D3DD0 002D0D10  7D 89 03 A6 */	mtctr r12
/* 802D3DD4 002D0D14  4E 80 04 21 */	bctrl
lbl_802D3DD8:
/* 802D3DD8 002D0D18  3C 60 80 3A */	lis r3, lbl_8039D120@ha
/* 802D3DDC 002D0D1C  38 63 D1 20 */	addi r3, r3, lbl_8039D120@l
/* 802D3DE0 002D0D20  38 80 00 AC */	li r4, 0xac
/* 802D3DE4 002D0D24  38 A3 00 12 */	addi r5, r3, 0x12
/* 802D3DE8 002D0D28  38 C3 00 15 */	addi r6, r3, 0x15
/* 802D3DEC 002D0D2C  4C C6 31 82 */	crclr 6
/* 802D3DF0 002D0D30  48 00 E4 0D */	bl JUTException_NS_panic_f
lbl_802D3DF4:
/* 802D3DF4 002D0D34  28 1A 00 00 */	cmplwi r26, 0
/* 802D3DF8 002D0D38  41 82 00 AC */	beq lbl_802D3EA4
/* 802D3DFC 002D0D3C  80 78 00 10 */	lwz r3, 0x10(r24)
/* 802D3E00 002D0D40  7F A4 EB 78 */	mr r4, r29
/* 802D3E04 002D0D44  38 A0 00 00 */	li r5, 0
/* 802D3E08 002D0D48  48 00 86 D5 */	bl JSURandomInputStream_NS_seek
/* 802D3E0C 002D0D4C  48 00 00 70 */	b lbl_802D3E7C
lbl_802D3E10:
/* 802D3E10 002D0D50  7C 1E F8 40 */	cmplw r30, r31
/* 802D3E14 002D0D54  7F D9 F3 78 */	mr r25, r30
/* 802D3E18 002D0D58  40 81 00 08 */	ble lbl_802D3E20
/* 802D3E1C 002D0D5C  7F F9 FB 78 */	mr r25, r31
lbl_802D3E20:
/* 802D3E20 002D0D60  80 78 00 10 */	lwz r3, 0x10(r24)
/* 802D3E24 002D0D64  7F 44 D3 78 */	mr r4, r26
/* 802D3E28 002D0D68  7F 25 CB 78 */	mr r5, r25
/* 802D3E2C 002D0D6C  48 00 84 6D */	bl JSUInputStream_NS_read
/* 802D3E30 002D0D70  2C 03 00 00 */	cmpwi r3, 0
/* 802D3E34 002D0D74  40 82 00 0C */	bne lbl_802D3E40
/* 802D3E38 002D0D78  3B 80 00 00 */	li r28, 0
/* 802D3E3C 002D0D7C  48 00 00 48 */	b lbl_802D3E84
lbl_802D3E40:
/* 802D3E40 002D0D80  38 60 00 00 */	li r3, 0
/* 802D3E44 002D0D84  7F 44 D3 78 */	mr r4, r26
/* 802D3E48 002D0D88  7F 65 DB 78 */	mr r5, r27
/* 802D3E4C 002D0D8C  7F 26 CB 78 */	mr r6, r25
/* 802D3E50 002D0D90  38 E0 00 00 */	li r7, 0
/* 802D3E54 002D0D94  4B FF F9 E5 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 802D3E58 002D0D98  7F D9 F0 50 */	subf r30, r25, r30
/* 802D3E5C 002D0D9C  7F 9C CA 14 */	add r28, r28, r25
/* 802D3E60 002D0DA0  7F 7B CA 14 */	add r27, r27, r25
/* 802D3E64 002D0DA4  80 78 00 18 */	lwz r3, 0x18(r24)
/* 802D3E68 002D0DA8  28 03 00 00 */	cmplwi r3, 0
/* 802D3E6C 002D0DAC  41 82 00 10 */	beq lbl_802D3E7C
/* 802D3E70 002D0DB0  80 03 00 00 */	lwz r0, 0(r3)
/* 802D3E74 002D0DB4  7C 00 CA 14 */	add r0, r0, r25
/* 802D3E78 002D0DB8  90 03 00 00 */	stw r0, 0(r3)
lbl_802D3E7C:
/* 802D3E7C 002D0DBC  28 1E 00 00 */	cmplwi r30, 0
/* 802D3E80 002D0DC0  40 82 FF 90 */	bne lbl_802D3E10
lbl_802D3E84:
/* 802D3E84 002D0DC4  88 18 00 28 */	lbz r0, 0x28(r24)
/* 802D3E88 002D0DC8  28 00 00 00 */	cmplwi r0, 0
/* 802D3E8C 002D0DCC  41 82 00 18 */	beq lbl_802D3EA4
/* 802D3E90 002D0DD0  7F 43 D3 78 */	mr r3, r26
/* 802D3E94 002D0DD4  38 80 00 00 */	li r4, 0
/* 802D3E98 002D0DD8  4B FF A6 69 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D3E9C 002D0DDC  38 00 00 00 */	li r0, 0
/* 802D3EA0 002D0DE0  98 18 00 28 */	stb r0, 0x28(r24)
lbl_802D3EA4:
/* 802D3EA4 002D0DE4  38 78 00 30 */	addi r3, r24, 0x30
/* 802D3EA8 002D0DE8  7F 84 E3 78 */	mr r4, r28
/* 802D3EAC 002D0DEC  38 A0 00 00 */	li r5, 0
/* 802D3EB0 002D0DF0  48 06 AB 45 */	bl OSSendMessage
/* 802D3EB4 002D0DF4  7F 83 E3 78 */	mr r3, r28
/* 802D3EB8 002D0DF8  39 61 00 30 */	addi r11, r1, 0x30
/* 802D3EBC 002D0DFC  48 08 E3 59 */	bl _restgpr_24
/* 802D3EC0 002D0E00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D3EC4 002D0E04  7C 08 03 A6 */	mtlr r0
/* 802D3EC8 002D0E08  38 21 00 30 */	addi r1, r1, 0x30
/* 802D3ECC 002D0E0C  4E 80 00 20 */	blr
