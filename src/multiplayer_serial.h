#ifndef MULTIPLAYER_SERIAL_H
#define MULTIPLAYER_SERIAL_H

#ifdef __cplusplus
extern "C" {
#endif

void multiplayer_serial_interrupt(void);
void multiplayer_serial_disable(void);
void multiplayer_serial_enable(void);

#ifdef __cplusplus
}
#endif

#endif
