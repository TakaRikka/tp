/* 802C6540 002C3480  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C6544 002C3484  7C 08 02 A6 */ mflr r0
/* 802C6548 002C3488  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C654C 002C348C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802C6550 002C3490  93 C1 00 08 */ stw r30, 8(r1)
/* 802C6554 002C3494  7C 7E 1B 79 */ or. r30, r3, r3
/* 802C6558 002C3498  7C 9F 23 78 */ mr r31, r4
/* 802C655C 002C349C  41 82 01 38 */ beq lbl_802C6694
/* 802C6560 002C34A0  38 7E 02 DC */ addi r3, r30, 0x2dc
/* 802C6564 002C34A4  38 80 FF FF */ li r4, -1
/* 802C6568 002C34A8  4B FF F3 45 */ bl Z2EnvSeBase_NS_dtor
/* 802C656C 002C34AC  38 7E 02 C0 */ addi r3, r30, 0x2c0
/* 802C6570 002C34B0  38 80 FF FF */ li r4, -1
/* 802C6574 002C34B4  4B FE 85 C1 */ bl __dt__12Z2MultiSeMgrFv
/* 802C6578 002C34B8  38 7E 02 A8 */ addi r3, r30, 0x2a8
/* 802C657C 002C34BC  38 80 FF FF */ li r4, -1
/* 802C6580 002C34C0  4B FF F3 2D */ bl Z2EnvSeBase_NS_dtor
/* 802C6584 002C34C4  38 7E 02 8C */ addi r3, r30, 0x28c
/* 802C6588 002C34C8  38 80 FF FF */ li r4, -1
/* 802C658C 002C34CC  4B FE 85 A9 */ bl __dt__12Z2MultiSeMgrFv
/* 802C6590 002C34D0  38 7E 02 74 */ addi r3, r30, 0x274
/* 802C6594 002C34D4  38 80 FF FF */ li r4, -1
/* 802C6598 002C34D8  4B FF F3 15 */ bl Z2EnvSeBase_NS_dtor
/* 802C659C 002C34DC  38 7E 02 58 */ addi r3, r30, 0x258
/* 802C65A0 002C34E0  38 80 FF FF */ li r4, -1
/* 802C65A4 002C34E4  4B FE 85 91 */ bl __dt__12Z2MultiSeMgrFv
/* 802C65A8 002C34E8  38 7E 02 40 */ addi r3, r30, 0x240
/* 802C65AC 002C34EC  38 80 FF FF */ li r4, -1
/* 802C65B0 002C34F0  4B FF F2 FD */ bl Z2EnvSeBase_NS_dtor
/* 802C65B4 002C34F4  38 7E 02 24 */ addi r3, r30, 0x224
/* 802C65B8 002C34F8  38 80 FF FF */ li r4, -1
/* 802C65BC 002C34FC  4B FE 85 79 */ bl __dt__12Z2MultiSeMgrFv
/* 802C65C0 002C3500  38 7E 02 0C */ addi r3, r30, 0x20c
/* 802C65C4 002C3504  38 80 FF FF */ li r4, -1
/* 802C65C8 002C3508  4B FF F2 E5 */ bl Z2EnvSeBase_NS_dtor
/* 802C65CC 002C350C  38 7E 01 F0 */ addi r3, r30, 0x1f0
/* 802C65D0 002C3510  38 80 FF FF */ li r4, -1
/* 802C65D4 002C3514  4B FE 85 61 */ bl __dt__12Z2MultiSeMgrFv
/* 802C65D8 002C3518  38 7E 01 D8 */ addi r3, r30, 0x1d8
/* 802C65DC 002C351C  38 80 FF FF */ li r4, -1
/* 802C65E0 002C3520  4B FF F2 CD */ bl Z2EnvSeBase_NS_dtor
/* 802C65E4 002C3524  38 7E 01 BC */ addi r3, r30, 0x1bc
/* 802C65E8 002C3528  38 80 FF FF */ li r4, -1
/* 802C65EC 002C352C  4B FE 85 49 */ bl __dt__12Z2MultiSeMgrFv
/* 802C65F0 002C3530  38 7E 01 80 */ addi r3, r30, 0x180
/* 802C65F4 002C3534  38 80 FF FF */ li r4, -1
/* 802C65F8 002C3538  4B FF F2 B5 */ bl Z2EnvSeBase_NS_dtor
/* 802C65FC 002C353C  38 7E 01 64 */ addi r3, r30, 0x164
/* 802C6600 002C3540  38 80 FF FF */ li r4, -1
/* 802C6604 002C3544  4B FE 85 31 */ bl __dt__12Z2MultiSeMgrFv
/* 802C6608 002C3548  38 7E 01 44 */ addi r3, r30, 0x144
/* 802C660C 002C354C  38 80 FF FF */ li r4, -1
/* 802C6610 002C3550  4B FF F7 0D */ bl Z2EnvSeDir_NS_dtor
/* 802C6614 002C3554  38 7E 01 18 */ addi r3, r30, 0x118
/* 802C6618 002C3558  38 80 FF FF */ li r4, -1
/* 802C661C 002C355C  4B FF F2 91 */ bl Z2EnvSeBase_NS_dtor
/* 802C6620 002C3560  38 7E 01 10 */ addi r3, r30, 0x110
/* 802C6624 002C3564  38 80 FF FF */ li r4, -1
/* 802C6628 002C3568  4B FF F2 85 */ bl Z2EnvSeBase_NS_dtor
/* 802C662C 002C356C  38 7E 00 88 */ addi r3, r30, 0x88
/* 802C6630 002C3570  38 80 FF FF */ li r4, -1
/* 802C6634 002C3574  4B FF F2 79 */ bl Z2EnvSeBase_NS_dtor
/* 802C6638 002C3578  38 7E 00 80 */ addi r3, r30, 0x80
/* 802C663C 002C357C  38 80 FF FF */ li r4, -1
/* 802C6640 002C3580  4B FF F2 6D */ bl Z2EnvSeBase_NS_dtor
/* 802C6644 002C3584  38 7E 00 64 */ addi r3, r30, 0x64
/* 802C6648 002C3588  38 80 FF FF */ li r4, -1
/* 802C664C 002C358C  4B FE 84 E9 */ bl __dt__12Z2MultiSeMgrFv
/* 802C6650 002C3590  38 7E 00 1C */ addi r3, r30, 0x1c
/* 802C6654 002C3594  38 80 FF FF */ li r4, -1
/* 802C6658 002C3598  4B FF F8 D1 */ bl Z2EnvSeAutoPan_NS_dtor
/* 802C665C 002C359C  7F C3 F3 78 */ mr r3, r30
/* 802C6660 002C35A0  38 80 FF FF */ li r4, -1
/* 802C6664 002C35A4  4B FF F8 C5 */ bl Z2EnvSeAutoPan_NS_dtor
/* 802C6668 002C35A8  28 1E 00 00 */ cmplwi r30, 0
/* 802C666C 002C35AC  41 82 00 18 */ beq lbl_802C6684
/* 802C6670 002C35B0  80 0D 85 BC */ lwz r0, lbl_80450B3C-_SDA_BASE_(r13)
/* 802C6674 002C35B4  7C 00 F0 40 */ cmplw r0, r30
/* 802C6678 002C35B8  40 82 00 0C */ bne lbl_802C6684
/* 802C667C 002C35BC  38 00 00 00 */ li r0, 0
/* 802C6680 002C35C0  90 0D 85 BC */ stw r0, lbl_80450B3C-_SDA_BASE_(r13)
lbl_802C6684:
/* 802C6684 002C35C4  7F E0 07 35 */ extsh. r0, r31
/* 802C6688 002C35C8  40 81 00 0C */ ble lbl_802C6694
/* 802C668C 002C35CC  7F C3 F3 78 */ mr r3, r30
/* 802C6690 002C35D0  48 00 86 AD */ bl __dl__FPv
lbl_802C6694:
/* 802C6694 002C35D4  7F C3 F3 78 */ mr r3, r30
/* 802C6698 002C35D8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802C669C 002C35DC  83 C1 00 08 */ lwz r30, 8(r1)
/* 802C66A0 002C35E0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C66A4 002C35E4  7C 08 03 A6 */ mtlr r0
/* 802C66A8 002C35E8  38 21 00 10 */ addi r1, r1, 0x10
/* 802C66AC 002C35EC  4E 80 00 20 */ blr