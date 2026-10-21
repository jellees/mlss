#ifndef OPTION_WINDOW_H
#define OPTION_WINDOW_H

struct BCLRProcess;
struct OPTNProcess;

void sub_80541B0(struct BCLRProcess* bclr, int width, int height);
void sub_805420C(struct OPTNProcess* optn);
void option_screen_set_ok_button(struct OPTNProcess* optn, int width, int height);

#endif
