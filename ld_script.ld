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
    }

    . = 0x8000000;

    .text :
    {
        asm/text08000000.o(.text);
        asm/heap.o(.text);
        asm/text08018E24.o(.text);
        src/process.o(.text);
        asm/text08019CA4.o(.text);
        src/game_boy_player_logo.o(.text);
        asm/text0801A548.o(.text);
        src/game_mode.o(.text);
        asm/text0801B0B8.o(.text);
        src/field.o(.text);
        asm/field.o(.text);
        asm/text0802A4E8.o(.text);
        asm/text0804FE68.o(.text);
        asm/text080508A8.o(.text);
        src/system_screens.o(.text);
        src/system_screen_popups.o(.text);
        asm/text080542C4.o(.text);
        src/title_screen.o(.text);
        src/multiplayer_serial.o(.text);
        asm/text08057568.o(.text);
        src/load_menu.o(.text);
        asm/text08127BC8.o(.text);
        asm/text08127E50.o(.text);
        src/save_menu.o(.text);
        asm/save_menu.o(.text);
        asm/text0812A9A0.o(.text);

        asm/rodata081DD790.o(.rodata);
        src/game_mode.o(.rodata);
        asm/rodata081E23B8.o(.rodata);
        src/field.o(.rodata);
        asm/field.o(.rodata);
        asm/rodata081E269C.o(.rodata);
        src/system_screens.o(.rodata);
        asm/rodata081E273C.o(.rodata);
        src/title_screen.o(.rodata);
        asm/rodata081E2794.o(.rodata);
        src/load_menu.o(.rodata);
        asm/rodata08210F64.o(.rodata);
        src/save_menu.o(.rodata);
        asm/save_menu.o(.rodata);
        asm/rodata08210FBC.o(.rodata);
        asm/text0804FE68.o(.data);
        asm/rodata08CDC068.o(.rodata);

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
