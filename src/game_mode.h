#ifndef GAME_MODE_H
#define GAME_MODE_H

#pragma interface

// Placeholder class for the functions of game_mode.cpp. sub_801B034, playBuzzerForKeys and
// setBuzzerKeys are defined inline at the top of game_mode.cpp, so their out-of-line copies come after
// the file's other functions, but their strings ("BCLR", "COMP") are emitted before make_fldm_801AF5C's
// "FLDM", as in the ROM.
class GameMode {
  public:
    static void sub_801AF50();
    static void make_fldm_801AF5C(int fromSave);
    static void sub_801AFA0();
    static void sub_801AFE4(int arg0);
    static void sub_801B014();
    static void sub_801B034();           // inline, in the .cpp
    static void playBuzzerForKeys();     // inline, in the .cpp
    static void setBuzzerKeys(u16 mask); // inline, in the .cpp
};

#endif
