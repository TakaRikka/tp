.include "macros.inc"

.section .text, "ax" # 80280588


.global JPAGetDirMtx
JPAGetDirMtx:
/* 80280588 0027D4C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028058C 0027D4CC  7C 08 02 A6 */	mflr r0
/* 80280590 0027D4D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80280594 0027D4D4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80280598 0027D4D8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8028059C 0027D4DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802805A0 0027D4E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802805A4 0027D4E4  7C 7E 1B 78 */	mr r30, r3
/* 802805A8 0027D4E8  7C 9F 23 78 */	mr r31, r4
/* 802805AC 0027D4EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802805B0 0027D4F0  FC 20 00 50 */	fneg f1, f0
/* 802805B4 0027D4F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802805B8 0027D4F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 802805BC 0027D4FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802805C0 0027D500  C0 02 B9 BC */	lfs f0, lbl_804553BC-_SDA2_BASE_(r2)
/* 802805C4 0027D504  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802805C8 0027D508  38 61 00 08 */	addi r3, r1, 8
/* 802805CC 0027D50C  48 0C 6B 85 */	bl PSVECMag
/* 802805D0 0027D510  C0 42 B9 C0 */	lfs f2, lbl_804553C0-_SDA2_BASE_(r2)
/* 802805D4 0027D514  3C 60 80 45 */	lis r3, lbl_80450AEC@ha
/* 802805D8 0027D518  C0 03 0A EC */	lfs f0, lbl_80450AEC@l(r3)
/* 802805DC 0027D51C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802805E0 0027D520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802805E4 0027D524  4C 40 13 82 */	cror 2, 0, 2
/* 802805E8 0027D528  40 82 00 18 */	bne lbl_80280600
/* 802805EC 0027D52C  C0 02 B9 BC */	lfs f0, lbl_804553BC-_SDA2_BASE_(r2)
/* 802805F0 0027D530  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802805F4 0027D534  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802805F8 0027D538  D0 01 00 08 */	stfs f0, 8(r1)
/* 802805FC 0027D53C  48 00 00 24 */	b lbl_80280620
lbl_80280600:
/* 80280600 0027D540  C0 02 B9 B8 */	lfs f0, lbl_804553B8-_SDA2_BASE_(r2)
/* 80280604 0027D544  EF E0 08 24 */	fdivs f31, f0, f1
/* 80280608 0027D548  E0 01 00 08 */	psq_l f0, 8(r1), 0, qr0
/* 8028060C 0027D54C  E0 41 80 10 */	psq_l f2, 16(r1), 1, qr0
/* 80280610 0027D550  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 80280614 0027D554  F0 01 00 08 */	psq_st f0, 8(r1), 0, qr0
/* 80280618 0027D558  10 02 07 D8 */	ps_muls0 f0, f2, f31
/* 8028061C 0027D55C  F0 01 80 10 */	psq_st f0, 16(r1), 1, qr0
lbl_80280620:
/* 80280620 0027D560  C0 01 00 08 */	lfs f0, 8(r1)
/* 80280624 0027D564  EC A0 00 32 */	fmuls f5, f0, f0
/* 80280628 0027D568  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8028062C 0027D56C  EC C3 00 F2 */	fmuls f6, f3, f3
/* 80280630 0027D570  EC E0 00 72 */	fmuls f7, f0, f1
/* 80280634 0027D574  ED 03 00 72 */	fmuls f8, f3, f1
/* 80280638 0027D578  C0 42 B9 B8 */	lfs f2, lbl_804553B8-_SDA2_BASE_(r2)
/* 8028063C 0027D57C  C0 9E 00 08 */	lfs f4, 8(r30)
/* 80280640 0027D580  EC 22 20 28 */	fsubs f1, f2, f4
/* 80280644 0027D584  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80280648 0027D588  EC 61 00 32 */	fmuls f3, f1, f0
/* 8028064C 0027D58C  EC 02 28 28 */	fsubs f0, f2, f5
/* 80280650 0027D590  EC 04 00 32 */	fmuls f0, f4, f0
/* 80280654 0027D594  EC 05 00 2A */	fadds f0, f5, f0
/* 80280658 0027D598  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8028065C 0027D59C  D0 7F 00 04 */	stfs f3, 4(r31)
/* 80280660 0027D5A0  FC 00 40 50 */	fneg f0, f8
/* 80280664 0027D5A4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80280668 0027D5A8  C0 22 B9 BC */	lfs f1, lbl_804553BC-_SDA2_BASE_(r2)
/* 8028066C 0027D5AC  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 80280670 0027D5B0  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 80280674 0027D5B4  EC 02 30 28 */	fsubs f0, f2, f6
/* 80280678 0027D5B8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8028067C 0027D5BC  EC 06 00 2A */	fadds f0, f6, f0
/* 80280680 0027D5C0  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80280684 0027D5C4  D0 FF 00 18 */	stfs f7, 0x18(r31)
/* 80280688 0027D5C8  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8028068C 0027D5CC  D1 1F 00 20 */	stfs f8, 0x20(r31)
/* 80280690 0027D5D0  FC 00 38 50 */	fneg f0, f7
/* 80280694 0027D5D4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80280698 0027D5D8  D0 9F 00 28 */	stfs f4, 0x28(r31)
/* 8028069C 0027D5DC  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 802806A0 0027D5E0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802806A4 0027D5E4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802806A8 0027D5E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802806AC 0027D5EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802806B0 0027D5F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802806B4 0027D5F4  7C 08 03 A6 */	mtlr r0
/* 802806B8 0027D5F8  38 21 00 30 */	addi r1, r1, 0x30
/* 802806BC 0027D5FC  4E 80 00 20 */	blr 

.global JPAGetYZRotateMtx
JPAGetYZRotateMtx:
/* 802806C0 0027D600  3C C0 80 44 */	lis r6, lbl_80439A20@ha
/* 802806C4 0027D604  38 C6 9A 20 */	addi r6, r6, lbl_80439A20@l
/* 802806C8 0027D608  38 E6 00 04 */	addi r7, r6, 4
/* 802806CC 0027D60C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 802806D0 0027D610  7C 27 04 2E */	lfsx f1, r7, r0
/* 802806D4 0027D614  54 83 04 38 */	rlwinm r3, r4, 0, 0x10, 0x1c
/* 802806D8 0027D618  7C 47 1C 2E */	lfsx f2, r7, r3
/* 802806DC 0027D61C  7C 66 04 2E */	lfsx f3, r6, r0
/* 802806E0 0027D620  7C 86 1C 2E */	lfsx f4, r6, r3
/* 802806E4 0027D624  EC 01 00 B2 */	fmuls f0, f1, f2
/* 802806E8 0027D628  D0 05 00 00 */	stfs f0, 0(r5)
/* 802806EC 0027D62C  FC 00 20 50 */	fneg f0, f4
/* 802806F0 0027D630  D0 05 00 04 */	stfs f0, 4(r5)
/* 802806F4 0027D634  EC 03 00 B2 */	fmuls f0, f3, f2
/* 802806F8 0027D638  D0 05 00 08 */	stfs f0, 8(r5)
/* 802806FC 0027D63C  EC 01 01 32 */	fmuls f0, f1, f4
/* 80280700 0027D640  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 80280704 0027D644  D0 45 00 14 */	stfs f2, 0x14(r5)
/* 80280708 0027D648  EC 03 01 32 */	fmuls f0, f3, f4
/* 8028070C 0027D64C  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 80280710 0027D650  FC 00 18 50 */	fneg f0, f3
/* 80280714 0027D654  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 80280718 0027D658  D0 25 00 28 */	stfs f1, 0x28(r5)
/* 8028071C 0027D65C  C0 02 B9 BC */	lfs f0, lbl_804553BC-_SDA2_BASE_(r2)
/* 80280720 0027D660  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 80280724 0027D664  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 80280728 0027D668  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8028072C 0027D66C  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80280730 0027D670  4E 80 00 20 */	blr 

.global JPAGetXYZRotateMtx
JPAGetXYZRotateMtx:
/* 80280734 0027D674  3C E0 80 44 */	lis r7, lbl_80439A20@ha
/* 80280738 0027D678  38 E7 9A 20 */	addi r7, r7, lbl_80439A20@l
/* 8028073C 0027D67C  39 07 00 04 */	addi r8, r7, 4
/* 80280740 0027D680  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80280744 0027D684  7C 28 04 2E */	lfsx f1, r8, r0
/* 80280748 0027D688  54 83 04 38 */	rlwinm r3, r4, 0, 0x10, 0x1c
/* 8028074C 0027D68C  7C 48 1C 2E */	lfsx f2, r8, r3
/* 80280750 0027D690  54 A4 04 38 */	rlwinm r4, r5, 0, 0x10, 0x1c
/* 80280754 0027D694  7C 68 24 2E */	lfsx f3, r8, r4
/* 80280758 0027D698  7C 87 04 2E */	lfsx f4, r7, r0
/* 8028075C 0027D69C  7C A7 1C 2E */	lfsx f5, r7, r3
/* 80280760 0027D6A0  7C C7 24 2E */	lfsx f6, r7, r4
/* 80280764 0027D6A4  EC 02 00 F2 */	fmuls f0, f2, f3
/* 80280768 0027D6A8  D0 06 00 00 */	stfs f0, 0(r6)
/* 8028076C 0027D6AC  EC 02 01 B2 */	fmuls f0, f2, f6
/* 80280770 0027D6B0  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 80280774 0027D6B4  FC 00 28 50 */	fneg f0, f5
/* 80280778 0027D6B8  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 8028077C 0027D6BC  EC 04 00 B2 */	fmuls f0, f4, f2
/* 80280780 0027D6C0  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 80280784 0027D6C4  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80280788 0027D6C8  D0 06 00 28 */	stfs f0, 0x28(r6)
/* 8028078C 0027D6CC  EC 41 01 B2 */	fmuls f2, f1, f6
/* 80280790 0027D6D0  EC E4 00 F2 */	fmuls f7, f4, f3
/* 80280794 0027D6D4  EC 07 01 72 */	fmuls f0, f7, f5
/* 80280798 0027D6D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8028079C 0027D6DC  D0 06 00 04 */	stfs f0, 4(r6)
/* 802807A0 0027D6E0  EC 02 01 72 */	fmuls f0, f2, f5
/* 802807A4 0027D6E4  EC 00 38 28 */	fsubs f0, f0, f7
/* 802807A8 0027D6E8  D0 06 00 18 */	stfs f0, 0x18(r6)
/* 802807AC 0027D6EC  EC 44 01 B2 */	fmuls f2, f4, f6
/* 802807B0 0027D6F0  EC 21 00 F2 */	fmuls f1, f1, f3
/* 802807B4 0027D6F4  EC 01 01 72 */	fmuls f0, f1, f5
/* 802807B8 0027D6F8  EC 02 00 2A */	fadds f0, f2, f0
/* 802807BC 0027D6FC  D0 06 00 08 */	stfs f0, 8(r6)
/* 802807C0 0027D700  EC 02 01 72 */	fmuls f0, f2, f5
/* 802807C4 0027D704  EC 01 00 2A */	fadds f0, f1, f0
/* 802807C8 0027D708  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 802807CC 0027D70C  C0 02 B9 BC */	lfs f0, lbl_804553BC-_SDA2_BASE_(r2)
/* 802807D0 0027D710  D0 06 00 2C */	stfs f0, 0x2c(r6)
/* 802807D4 0027D714  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 802807D8 0027D718  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 802807DC 0027D71C  4E 80 00 20 */	blr 

.global JPASetRMtxTVecfromMtx
JPASetRMtxTVecfromMtx:
/* 802807E0 0027D720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802807E4 0027D724  7C 08 02 A6 */	mflr r0
/* 802807E8 0027D728  90 01 00 24 */	stw r0, 0x24(r1)
/* 802807EC 0027D72C  7C A6 2B 78 */	mr r6, r5
/* 802807F0 0027D730  38 A1 00 08 */	addi r5, r1, 8
/* 802807F4 0027D734  48 00 00 15 */	bl JPASetRMtxSTVecfromMtx
/* 802807F8 0027D738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802807FC 0027D73C  7C 08 03 A6 */	mtlr r0
/* 80280800 0027D740  38 21 00 20 */	addi r1, r1, 0x20
/* 80280804 0027D744  4E 80 00 20 */	blr 

.global JPASetRMtxSTVecfromMtx
JPASetRMtxSTVecfromMtx:
/* 80280808 0027D748  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028080C 0027D74C  7C 08 02 A6 */	mflr r0
/* 80280810 0027D750  90 01 00 34 */	stw r0, 0x34(r1)
/* 80280814 0027D754  39 61 00 30 */	addi r11, r1, 0x30
/* 80280818 0027D758  48 0E 19 C1 */	bl _savegpr_28
/* 8028081C 0027D75C  7C 7C 1B 78 */	mr r28, r3
/* 80280820 0027D760  7C 9D 23 78 */	mr r29, r4
/* 80280824 0027D764  7C BE 2B 78 */	mr r30, r5
/* 80280828 0027D768  7C DF 33 78 */	mr r31, r6
/* 8028082C 0027D76C  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80280830 0027D770  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80280834 0027D774  C0 03 00 00 */	lfs f0, 0(r3)
/* 80280838 0027D778  D0 01 00 08 */	stfs f0, 8(r1)
/* 8028083C 0027D77C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80280840 0027D780  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80280844 0027D784  38 61 00 08 */	addi r3, r1, 8
/* 80280848 0027D788  48 0C 69 09 */	bl PSVECMag
/* 8028084C 0027D78C  D0 3E 00 00 */	stfs f1, 0(r30)
/* 80280850 0027D790  C0 5C 00 24 */	lfs f2, 0x24(r28)
/* 80280854 0027D794  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 80280858 0027D798  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8028085C 0027D79C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80280860 0027D7A0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80280864 0027D7A4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80280868 0027D7A8  38 61 00 08 */	addi r3, r1, 8
/* 8028086C 0027D7AC  48 0C 68 E5 */	bl PSVECMag
/* 80280870 0027D7B0  D0 3E 00 04 */	stfs f1, 4(r30)
/* 80280874 0027D7B4  C0 5C 00 28 */	lfs f2, 0x28(r28)
/* 80280878 0027D7B8  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 8028087C 0027D7BC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80280880 0027D7C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80280884 0027D7C4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80280888 0027D7C8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8028088C 0027D7CC  38 61 00 08 */	addi r3, r1, 8
/* 80280890 0027D7D0  48 0C 68 C1 */	bl PSVECMag
/* 80280894 0027D7D4  D0 3E 00 08 */	stfs f1, 8(r30)
/* 80280898 0027D7D8  7F A3 EB 78 */	mr r3, r29
/* 8028089C 0027D7DC  48 0C 5B E9 */	bl PSMTXIdentity
/* 802808A0 0027D7E0  C0 02 B9 BC */	lfs f0, lbl_804553BC-_SDA2_BASE_(r2)
/* 802808A4 0027D7E4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 802808A8 0027D7E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802808AC 0027D7EC  41 82 00 30 */	beq lbl_802808DC
/* 802808B0 0027D7F0  C0 02 B9 B8 */	lfs f0, lbl_804553B8-_SDA2_BASE_(r2)
/* 802808B4 0027D7F4  EC 20 08 24 */	fdivs f1, f0, f1
/* 802808B8 0027D7F8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 802808BC 0027D7FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 802808C0 0027D800  D0 1D 00 00 */	stfs f0, 0(r29)
/* 802808C4 0027D804  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 802808C8 0027D808  EC 00 00 72 */	fmuls f0, f0, f1
/* 802808CC 0027D80C  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 802808D0 0027D810  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 802808D4 0027D814  EC 00 00 72 */	fmuls f0, f0, f1
/* 802808D8 0027D818  D0 1D 00 20 */	stfs f0, 0x20(r29)
lbl_802808DC:
/* 802808DC 0027D81C  C0 02 B9 BC */	lfs f0, lbl_804553BC-_SDA2_BASE_(r2)
/* 802808E0 0027D820  C0 3E 00 04 */	lfs f1, 4(r30)
/* 802808E4 0027D824  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802808E8 0027D828  41 82 00 30 */	beq lbl_80280918
/* 802808EC 0027D82C  C0 02 B9 B8 */	lfs f0, lbl_804553B8-_SDA2_BASE_(r2)
/* 802808F0 0027D830  EC 20 08 24 */	fdivs f1, f0, f1
/* 802808F4 0027D834  C0 1C 00 04 */	lfs f0, 4(r28)
/* 802808F8 0027D838  EC 00 00 72 */	fmuls f0, f0, f1
/* 802808FC 0027D83C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80280900 0027D840  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 80280904 0027D844  EC 00 00 72 */	fmuls f0, f0, f1
/* 80280908 0027D848  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8028090C 0027D84C  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 80280910 0027D850  EC 00 00 72 */	fmuls f0, f0, f1
/* 80280914 0027D854  D0 1D 00 24 */	stfs f0, 0x24(r29)
lbl_80280918:
/* 80280918 0027D858  C0 02 B9 BC */	lfs f0, lbl_804553BC-_SDA2_BASE_(r2)
/* 8028091C 0027D85C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80280920 0027D860  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80280924 0027D864  41 82 00 30 */	beq lbl_80280954
/* 80280928 0027D868  C0 02 B9 B8 */	lfs f0, lbl_804553B8-_SDA2_BASE_(r2)
/* 8028092C 0027D86C  EC 20 08 24 */	fdivs f1, f0, f1
/* 80280930 0027D870  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80280934 0027D874  EC 00 00 72 */	fmuls f0, f0, f1
/* 80280938 0027D878  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8028093C 0027D87C  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 80280940 0027D880  EC 00 00 72 */	fmuls f0, f0, f1
/* 80280944 0027D884  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80280948 0027D888  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 8028094C 0027D88C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80280950 0027D890  D0 1D 00 28 */	stfs f0, 0x28(r29)
lbl_80280954:
/* 80280954 0027D894  C0 5C 00 2C */	lfs f2, 0x2c(r28)
/* 80280958 0027D898  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 8028095C 0027D89C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80280960 0027D8A0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80280964 0027D8A4  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80280968 0027D8A8  D0 5F 00 08 */	stfs f2, 8(r31)
/* 8028096C 0027D8AC  39 61 00 30 */	addi r11, r1, 0x30
/* 80280970 0027D8B0  48 0E 18 B5 */	bl _restgpr_28
/* 80280974 0027D8B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80280978 0027D8B8  7C 08 03 A6 */	mtlr r0
/* 8028097C 0027D8BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80280980 0027D8C0  4E 80 00 20 */	blr 

.global JPACalcKeyAnmValue
JPACalcKeyAnmValue:
/* 80280984 0027D8C4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80280988 0027D8C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8028098C 0027D8CC  40 80 00 0C */	bge lbl_80280998
/* 80280990 0027D8D0  C0 24 00 04 */	lfs f1, 4(r4)
/* 80280994 0027D8D4  4E 80 00 20 */	blr 
lbl_80280998:
/* 80280998 0027D8D8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8028099C 0027D8DC  38 03 FF FF */	addi r0, r3, -1
/* 802809A0 0027D8E0  54 00 20 36 */	slwi r0, r0, 4
/* 802809A4 0027D8E4  7C 04 04 2E */	lfsx f0, r4, r0
/* 802809A8 0027D8E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802809AC 0027D8EC  4C 40 13 82 */	cror 2, 0, 2
/* 802809B0 0027D8F0  40 82 00 40 */	bne lbl_802809F0
/* 802809B4 0027D8F4  7C 64 02 14 */	add r3, r4, r0
/* 802809B8 0027D8F8  C0 23 00 04 */	lfs f1, 4(r3)
/* 802809BC 0027D8FC  4E 80 00 20 */	blr 
/* 802809C0 0027D900  48 00 00 30 */	b lbl_802809F0
lbl_802809C4:
/* 802809C4 0027D904  7C 60 0E 70 */	srawi r0, r3, 1
/* 802809C8 0027D908  7C A0 01 94 */	addze r5, r0
/* 802809CC 0027D90C  54 A0 20 36 */	slwi r0, r5, 4
/* 802809D0 0027D910  7C 04 04 2E */	lfsx f0, r4, r0
/* 802809D4 0027D914  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802809D8 0027D918  4C 41 13 82 */	cror 2, 1, 2
/* 802809DC 0027D91C  40 82 00 10 */	bne lbl_802809EC
/* 802809E0 0027D920  7C 84 02 14 */	add r4, r4, r0
/* 802809E4 0027D924  7C 65 18 50 */	subf r3, r5, r3
/* 802809E8 0027D928  48 00 00 08 */	b lbl_802809F0
lbl_802809EC:
/* 802809EC 0027D92C  7C A3 2B 78 */	mr r3, r5
lbl_802809F0:
/* 802809F0 0027D930  2C 03 00 01 */	cmpwi r3, 1
/* 802809F4 0027D934  41 81 FF D0 */	bgt lbl_802809C4
/* 802809F8 0027D938  C1 24 00 18 */	lfs f9, 0x18(r4)
/* 802809FC 0027D93C  C1 04 00 14 */	lfs f8, 0x14(r4)
/* 80280A00 0027D940  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 80280A04 0027D944  C0 E4 00 0C */	lfs f7, 0xc(r4)
/* 80280A08 0027D948  C0 C4 00 04 */	lfs f6, 4(r4)
/* 80280A0C 0027D94C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80280A10 0027D950  EC A1 00 28 */	fsubs f5, f1, f0
/* 80280A14 0027D954  EC 82 00 28 */	fsubs f4, f2, f0
/* 80280A18 0027D958  EC 65 20 24 */	fdivs f3, f5, f4
/* 80280A1C 0027D95C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80280A20 0027D960  EC 23 18 2A */	fadds f1, f3, f3
/* 80280A24 0027D964  EC 40 18 28 */	fsubs f2, f0, f3
/* 80280A28 0027D968  EC 86 40 28 */	fsubs f4, f6, f8
/* 80280A2C 0027D96C  EC 01 00 B8 */	fmsubs f0, f1, f2, f0
/* 80280A30 0027D970  EC 27 38 BA */	fmadds f1, f7, f2, f7
/* 80280A34 0027D974  EC 00 31 3A */	fmadds f0, f0, f4, f6
/* 80280A38 0027D978  EC 29 08 BA */	fmadds f1, f9, f2, f1
/* 80280A3C 0027D97C  EC 23 09 F8 */	fmsubs f1, f3, f7, f1
/* 80280A40 0027D980  EC 25 00 7C */	fnmsubs f1, f5, f1, f0
/* 80280A44 0027D984  4E 80 00 20 */	blr 

