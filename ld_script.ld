SECTIONS
{
    . = 0x2000000;

    ewram (NOLOAD) :
    ALIGN(0)
    {
    }

    . = 0x3000000;

    .bss (NOLOAD) :
    ALIGN(0)
    {
        . = 0x00001A20; *libgcc.a:dp-bit.o(.bss);
        *libgcc.a:fp-bit.o(.bss);
        . = 0x00001A68; *libc.a:syscalls.o(.bss);
        . = 0x00001BD4; *libc.a:sbrkr.o(COMMON);
        end = .;
    }

    . = 0x8000000;

    .text :
    {
        asm/text08000000.o(.text);
        src/heap.o(.text);
        asm/text08018E24.o(.text);
        src/process.o(.text);
        asm/text08019CA4.o(.text);
        src/game_boy_player_logo.o(.text);
        asm/text0801A548.o(.text);
        src/game_mode.o(.text);
        asm/text0801B0B8.o(.text);
        src/field.o(.text);
        asm/field.o(.text);
        asm/text0803EA00.o(.text);
        src/field_object.o(.text);
        src/field_player_character.o(.text);
        src/field_monster.o(.text);
        asm/field_block.o(.text);
        asm/field_sprite_layout.o(.text);
        src/sign.o(.text);
        src/system_screens.o(.text);
        src/system_screens.o(.gnu.linkonce.t.*);
        src/system_screen_popups.o(.text);
        asm/text080542C4.o(.text);
        src/title_screen.o(.text);
        src/multiplayer_serial.o(.text);
        asm/text08057568.o(.text);
        src/text080575C8.o(.text);
        asm/text080575C8.o(.text);
        asm/text0805CCE0.o(.text);
        src/load_menu.o(.text);
        asm/text08127BC8.o(.text);
        asm/text08127E50.o(.text);
        src/save_menu.o(.text);
        asm/text0812A9A0.o(.text);

        asm/libagbsyscall.o(.text);
        asm/eeprom.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_modsi3.o(.text);
        asm/text081DAC0C.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libgcc.a:dp-bit.o(.text);
        *libgcc.a:fp-bit.o(.text);
        asm/text081DC434.o(.text);
        *libgcc.a:_lshrdi3.o(.text);
		*libgcc.a:_muldi3.o(.text);
		*libgcc.a:_negdi2.o(.text);
        *libc.a:libcfunc.o(.text);
        asm/text081DC7F4.o(.text);
        *libc.a:mallocr.o(.text);
        *libc.a:memcpy.o(.text);
        *libc.a:memset.o(.text);
        *libc.a:mlock.o(.text);
        *libc.a:sbrkr.o(.text);
        *libc.a:strcmp.o(.text);
        *libc.a:syscalls.o(.text);
        *libc.a:errno.o(.text);
        *libc.a:freer.o(.text);
        *libc.a:strlen.o(.text);

        src/field_player_character.o(.gnu.linkonce.t._._20FieldPlayerCharacter);
        src/field_monster.o(.gnu.linkonce.t._._20FieldObjectSubclass4);
        asm/text081DD5F8.o(.text);

        asm/rodata081DD790.o(.rodata);
        src/heap.o(.rodata);
        asm/rodata081DD7D0.o(.rodata);
        src/game_mode.o(.rodata);
        asm/rodata081E23B8.o(.rodata);
        src/field.o(.rodata);
        asm/field.o(.rodata);
        src/field_monster.o(.rodata);
        src/sign.o(.rodata);
        src/system_screens.o(.rodata);
        asm/rodata081E273C.o(.rodata);
        src/title_screen.o(.rodata);
        src/text080575C8.o(.rodata);
        asm/rodata081E2794.o(.rodata);
        asm/rodata081E2840.o(.rodata);
        src/load_menu.o(.rodata);
        asm/rodata08210F64.o(.rodata);
        src/save_menu.o(.rodata);
        asm/rodata08210FBC.o(.rodata);
        *libc.a:syscalls.o(.rodata);
        *libc.a:impure.o(.rodata);

        asm/rodata0821DC0C.o(.rodata);
        *libc.a:mallocr.o(.data);
        *libc.a:impure.o(.data);
        asm/rodata08CDBD68.o(.rodata);

        src/field.o(.gnu.linkonce.d.*);
        asm/rodata08CDBDC8.o(.rodata);
        src/field_object.o(.gnu.linkonce.d.*);
        src/field_player_character.o(.gnu.linkonce.d.*);
        src/field_monster.o(.gnu.linkonce.d.*);
        asm/rodata08CDC068.o(.rodata);
        src/sign.o(.gnu.linkonce.d.*);
        src/system_screens.o(.gnu.linkonce.d._vt.18MarioBrosSaveError);
        src/system_screens.o(.gnu.linkonce.d._vt.15SaveClearScreen);
        src/system_screens.o(.gnu.linkonce.d._vt.17SaveClearRenderer);
        asm/rodata08CDC1F8.o(.rodata);
        src/title_screen.o(.gnu.linkonce.d.*);
        asm/rodata08CDC278.o(.rodata);
        asm/rodata08CDC2C8.o(.rodata);
        src/load_menu.o(.gnu.linkonce.d.*);
        src/save_menu.o(.gnu.linkonce.d.*);
        asm/rodata08CDC3F8.o(.rodata);

        asm/mariobros.o(.text);
    }
    
    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
