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
        src/option_screens.o(.text);
        asm/option_screens.o(.text);
        asm/text080542C4.o(.text);
        src/title_screen.o(.text);
        asm/text08057568.o(.text);

        asm/rodata081DD790.o(.rodata);
        src/title_screen.o(.rodata);
        asm/rodata081E2764.o(.rodata);

        asm/mariobros.o(.text);
    }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
