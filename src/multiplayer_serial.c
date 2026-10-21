#include "global.h"
#include "common.h"
#include "multiplayer_serial.h"

void multiplayer_serial_interrupt(void) {
    REG_SIOMLT_SEND = 0xFEFE;
}

void multiplayer_serial_disable(void) {
    REG_IME = 0;
    REG_IE &= ~INTR_FLAG_SERIAL;
    REG_IF |= INTR_FLAG_SERIAL;
    REG_IME = 1;

    REG_IME = 0;
    REG_SIOCNT = SIO_MULTI_MODE | SIO_115200_BPS;
    REG_IME = 1;
}

void multiplayer_serial_enable(void) {
    runtime_install_interrupt_callback(1, multiplayer_serial_interrupt);

    REG_IME = 0;
    REG_RCNT = 0;
    REG_SIOCNT = SIO_MULTI_MODE;
    REG_SIOCNT |= SIO_INTR_ENABLE | SIO_115200_BPS;
    REG_SIOMLT_SEND = 0xFEFE;
    REG_IME = 1;

    REG_IME = 0;
    REG_IE |= INTR_FLAG_SERIAL;
    REG_IF |= INTR_FLAG_SERIAL;
    REG_IME = 1;
}
