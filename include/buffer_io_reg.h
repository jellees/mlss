#ifndef BUFFER_IO_REG_DEFINES
#define BUFFER_IO_REG_DEFINES

#define BUFFER_REG_BASE 0x2000000

#define BUFFER_REG_ADDR_DISPCNT     (BUFFER_REG_BASE + REG_OFFSET_DISPCNT)
#define BUFFER_REG_ADDR_DISPSTAT    (BUFFER_REG_BASE + REG_OFFSET_DISPSTAT)
#define BUFFER_REG_ADDR_VCOUNT      (BUFFER_REG_BASE + REG_OFFSET_VCOUNT)
#define BUFFER_REG_ADDR_BG0CNT      (BUFFER_REG_BASE + REG_OFFSET_BG0CNT)
#define BUFFER_REG_ADDR_BG1CNT      (BUFFER_REG_BASE + REG_OFFSET_BG1CNT)
#define BUFFER_REG_ADDR_BG2CNT      (BUFFER_REG_BASE + REG_OFFSET_BG2CNT)
#define BUFFER_REG_ADDR_BG3CNT      (BUFFER_REG_BASE + REG_OFFSET_BG3CNT)
#define BUFFER_REG_ADDR_BG0HOFS     (BUFFER_REG_BASE + REG_OFFSET_BG0HOFS)
#define BUFFER_REG_ADDR_BG0VOFS     (BUFFER_REG_BASE + REG_OFFSET_BG0VOFS)
#define BUFFER_REG_ADDR_BG1HOFS     (BUFFER_REG_BASE + REG_OFFSET_BG1HOFS)
#define BUFFER_REG_ADDR_BG1VOFS     (BUFFER_REG_BASE + REG_OFFSET_BG1VOFS)
#define BUFFER_REG_ADDR_BG2HOFS     (BUFFER_REG_BASE + REG_OFFSET_BG2HOFS)
#define BUFFER_REG_ADDR_BG2VOFS     (BUFFER_REG_BASE + REG_OFFSET_BG2VOFS)
#define BUFFER_REG_ADDR_BG3HOFS     (BUFFER_REG_BASE + REG_OFFSET_BG3HOFS)
#define BUFFER_REG_ADDR_BG3VOFS     (BUFFER_REG_BASE + REG_OFFSET_BG3VOFS)
#define BUFFER_REG_ADDR_BG2PA       (BUFFER_REG_BASE + REG_OFFSET_BG2PA)
#define BUFFER_REG_ADDR_BG2PB       (BUFFER_REG_BASE + REG_OFFSET_BG2PB)
#define BUFFER_REG_ADDR_BG2PC       (BUFFER_REG_BASE + REG_OFFSET_BG2PC)
#define BUFFER_REG_ADDR_BG2PD       (BUFFER_REG_BASE + REG_OFFSET_BG2PD)
#define BUFFER_REG_ADDR_BG2X        (BUFFER_REG_BASE + REG_OFFSET_BG2X)
#define BUFFER_REG_ADDR_BG2X_L      (BUFFER_REG_BASE + REG_OFFSET_BG2X_L)
#define BUFFER_REG_ADDR_BG2X_H      (BUFFER_REG_BASE + REG_OFFSET_BG2X_H)
#define BUFFER_REG_ADDR_BG2Y        (BUFFER_REG_BASE + REG_OFFSET_BG2Y)
#define BUFFER_REG_ADDR_BG2Y_L      (BUFFER_REG_BASE + REG_OFFSET_BG2Y_L)
#define BUFFER_REG_ADDR_BG2Y_H      (BUFFER_REG_BASE + REG_OFFSET_BG2Y_H)
#define BUFFER_REG_ADDR_BG3PA       (BUFFER_REG_BASE + REG_OFFSET_BG3PA)
#define BUFFER_REG_ADDR_BG3PB       (BUFFER_REG_BASE + REG_OFFSET_BG3PB)
#define BUFFER_REG_ADDR_BG3PC       (BUFFER_REG_BASE + REG_OFFSET_BG3PC)
#define BUFFER_REG_ADDR_BG3PD       (BUFFER_REG_BASE + REG_OFFSET_BG3PD)
#define BUFFER_REG_ADDR_BG3X        (BUFFER_REG_BASE + REG_OFFSET_BG3X)
#define BUFFER_REG_ADDR_BG3X_L      (BUFFER_REG_BASE + REG_OFFSET_BG3X_L)
#define BUFFER_REG_ADDR_BG3X_H      (BUFFER_REG_BASE + REG_OFFSET_BG3X_H)
#define BUFFER_REG_ADDR_BG3Y        (BUFFER_REG_BASE + REG_OFFSET_BG3Y)
#define BUFFER_REG_ADDR_BG3Y_L      (BUFFER_REG_BASE + REG_OFFSET_BG3Y_L)
#define BUFFER_REG_ADDR_BG3Y_H      (BUFFER_REG_BASE + REG_OFFSET_BG3Y_H)
#define BUFFER_REG_ADDR_WIN0H       (BUFFER_REG_BASE + REG_OFFSET_WIN0H)
#define BUFFER_REG_ADDR_WIN1H       (BUFFER_REG_BASE + REG_OFFSET_WIN1H)
#define BUFFER_REG_ADDR_WIN0V       (BUFFER_REG_BASE + REG_OFFSET_WIN0V)
#define BUFFER_REG_ADDR_WIN1V       (BUFFER_REG_BASE + REG_OFFSET_WIN1V)
#define BUFFER_REG_ADDR_WININ       (BUFFER_REG_BASE + REG_OFFSET_WININ)
#define BUFFER_REG_ADDR_WINOUT      (BUFFER_REG_BASE + REG_OFFSET_WINOUT)
#define BUFFER_REG_ADDR_MOSAIC      (BUFFER_REG_BASE + REG_OFFSET_MOSAIC)
#define BUFFER_REG_ADDR_BLDCNT      (BUFFER_REG_BASE + REG_OFFSET_BLDCNT)
#define BUFFER_REG_ADDR_BLDALPHA    (BUFFER_REG_BASE + REG_OFFSET_BLDALPHA)
#define BUFFER_REG_ADDR_BLDY        (BUFFER_REG_BASE + REG_OFFSET_BLDY)

#define BUFFER_REG_ADDR_SOUND1CNT_L (BUFFER_REG_BASE + REG_OFFSET_SOUND1CNT_L)
#define BUFFER_REG_ADDR_NR10        (BUFFER_REG_BASE + REG_OFFSET_NR10)
#define BUFFER_REG_ADDR_SOUND1CNT_H (BUFFER_REG_BASE + REG_OFFSET_SOUND1CNT_H)
#define BUFFER_REG_ADDR_NR11        (BUFFER_REG_BASE + REG_OFFSET_NR11)
#define BUFFER_REG_ADDR_NR12        (BUFFER_REG_BASE + REG_OFFSET_NR12)
#define BUFFER_REG_ADDR_SOUND1CNT_X (BUFFER_REG_BASE + REG_OFFSET_SOUND1CNT_X)
#define BUFFER_REG_ADDR_NR13        (BUFFER_REG_BASE + REG_OFFSET_NR13)
#define BUFFER_REG_ADDR_NR14        (BUFFER_REG_BASE + REG_OFFSET_NR14)
#define BUFFER_REG_ADDR_SOUND2CNT_L (BUFFER_REG_BASE + REG_OFFSET_SOUND2CNT_L)
#define BUFFER_REG_ADDR_NR21        (BUFFER_REG_BASE + REG_OFFSET_NR21)
#define BUFFER_REG_ADDR_NR22        (BUFFER_REG_BASE + REG_OFFSET_NR22)
#define BUFFER_REG_ADDR_SOUND2CNT_H (BUFFER_REG_BASE + REG_OFFSET_SOUND2CNT_H)
#define BUFFER_REG_ADDR_NR23        (BUFFER_REG_BASE + REG_OFFSET_NR23)
#define BUFFER_REG_ADDR_NR24        (BUFFER_REG_BASE + REG_OFFSET_NR24)
#define BUFFER_REG_ADDR_SOUND3CNT_L (BUFFER_REG_BASE + REG_OFFSET_SOUND3CNT_L)
#define BUFFER_REG_ADDR_NR30        (BUFFER_REG_BASE + REG_OFFSET_NR30)
#define BUFFER_REG_ADDR_SOUND3CNT_H (BUFFER_REG_BASE + REG_OFFSET_SOUND3CNT_H)
#define BUFFER_REG_ADDR_NR31        (BUFFER_REG_BASE + REG_OFFSET_NR31)
#define BUFFER_REG_ADDR_NR32        (BUFFER_REG_BASE + REG_OFFSET_NR32)
#define BUFFER_REG_ADDR_SOUND3CNT_X (BUFFER_REG_BASE + REG_OFFSET_SOUND3CNT_X)
#define BUFFER_REG_ADDR_NR33        (BUFFER_REG_BASE + REG_OFFSET_NR33)
#define BUFFER_REG_ADDR_NR34        (BUFFER_REG_BASE + REG_OFFSET_NR34)
#define BUFFER_REG_ADDR_SOUND4CNT_L (BUFFER_REG_BASE + REG_OFFSET_SOUND4CNT_L)
#define BUFFER_REG_ADDR_NR41        (BUFFER_REG_BASE + REG_OFFSET_NR41)
#define BUFFER_REG_ADDR_NR42        (BUFFER_REG_BASE + REG_OFFSET_NR42)
#define BUFFER_REG_ADDR_SOUND4CNT_H (BUFFER_REG_BASE + REG_OFFSET_SOUND4CNT_H)
#define BUFFER_REG_ADDR_NR43        (BUFFER_REG_BASE + REG_OFFSET_NR43)
#define BUFFER_REG_ADDR_NR44        (BUFFER_REG_BASE + REG_OFFSET_NR44)
#define BUFFER_REG_ADDR_SOUNDCNT_L  (BUFFER_REG_BASE + REG_OFFSET_SOUNDCNT_L)
#define BUFFER_REG_ADDR_NR50        (BUFFER_REG_BASE + REG_OFFSET_NR50)
#define BUFFER_REG_ADDR_NR51        (BUFFER_REG_BASE + REG_OFFSET_NR51)
#define BUFFER_REG_ADDR_SOUNDCNT_H  (BUFFER_REG_BASE + REG_OFFSET_SOUNDCNT_H)
#define BUFFER_REG_ADDR_SOUNDCNT_X  (BUFFER_REG_BASE + REG_OFFSET_SOUNDCNT_X)
#define BUFFER_REG_ADDR_NR52        (BUFFER_REG_BASE + REG_OFFSET_NR52)
#define BUFFER_REG_ADDR_SOUNDBIAS   (BUFFER_REG_BASE + REG_OFFSET_SOUNDBIAS)
#define BUFFER_REG_ADDR_SOUNDBIAS_L (BUFFER_REG_BASE + REG_OFFSET_SOUNDBIAS_L)
#define BUFFER_REG_ADDR_SOUNDBIAS_H (BUFFER_REG_BASE + REG_OFFSET_SOUNDBIAS_H)
#define BUFFER_REG_ADDR_WAVE_RAM0   (BUFFER_REG_BASE + REG_OFFSET_WAVE_RAM0)
#define BUFFER_REG_ADDR_WAVE_RAM1   (BUFFER_REG_BASE + REG_OFFSET_WAVE_RAM1)
#define BUFFER_REG_ADDR_WAVE_RAM2   (BUFFER_REG_BASE + REG_OFFSET_WAVE_RAM2)
#define BUFFER_REG_ADDR_WAVE_RAM3   (BUFFER_REG_BASE + REG_OFFSET_WAVE_RAM3)
#define BUFFER_REG_ADDR_FIFO_A      (BUFFER_REG_BASE + REG_OFFSET_FIFO_A)
#define BUFFER_REG_ADDR_FIFO_B      (BUFFER_REG_BASE + REG_OFFSET_FIFO_B)

#define BUFFER_REG_ADDR_DMA0        (BUFFER_REG_BASE + REG_OFFSET_DMA0)
#define BUFFER_REG_ADDR_DMA0SAD     (BUFFER_REG_BASE + REG_OFFSET_DMA0SAD)
#define BUFFER_REG_ADDR_DMA0DAD     (BUFFER_REG_BASE + REG_OFFSET_DMA0DAD)
#define BUFFER_REG_ADDR_DMA0CNT     (BUFFER_REG_BASE + REG_OFFSET_DMA0CNT)
#define BUFFER_REG_ADDR_DMA0CNT_L   (BUFFER_REG_BASE + REG_OFFSET_DMA0CNT_L)
#define BUFFER_REG_ADDR_DMA0CNT_H   (BUFFER_REG_BASE + REG_OFFSET_DMA0CNT_H)
#define BUFFER_REG_ADDR_DMA1        (BUFFER_REG_BASE + REG_OFFSET_DMA1)
#define BUFFER_REG_ADDR_DMA1SAD     (BUFFER_REG_BASE + REG_OFFSET_DMA1SAD)
#define BUFFER_REG_ADDR_DMA1DAD     (BUFFER_REG_BASE + REG_OFFSET_DMA1DAD)
#define BUFFER_REG_ADDR_DMA1CNT     (BUFFER_REG_BASE + REG_OFFSET_DMA1CNT)
#define BUFFER_REG_ADDR_DMA1CNT_L   (BUFFER_REG_BASE + REG_OFFSET_DMA1CNT_L)
#define BUFFER_REG_ADDR_DMA1CNT_H   (BUFFER_REG_BASE + REG_OFFSET_DMA1CNT_H)
#define BUFFER_REG_ADDR_DMA2        (BUFFER_REG_BASE + REG_OFFSET_DMA2)
#define BUFFER_REG_ADDR_DMA2SAD     (BUFFER_REG_BASE + REG_OFFSET_DMA2SAD)
#define BUFFER_REG_ADDR_DMA2DAD     (BUFFER_REG_BASE + REG_OFFSET_DMA2DAD)
#define BUFFER_REG_ADDR_DMA2CNT     (BUFFER_REG_BASE + REG_OFFSET_DMA2CNT)
#define BUFFER_REG_ADDR_DMA2CNT_L   (BUFFER_REG_BASE + REG_OFFSET_DMA2CNT_L)
#define BUFFER_REG_ADDR_DMA2CNT_H   (BUFFER_REG_BASE + REG_OFFSET_DMA2CNT_H)
#define BUFFER_REG_ADDR_DMA3        (BUFFER_REG_BASE + REG_OFFSET_DMA3)
#define BUFFER_REG_ADDR_DMA3SAD     (BUFFER_REG_BASE + REG_OFFSET_DMA3SAD)
#define BUFFER_REG_ADDR_DMA3DAD     (BUFFER_REG_BASE + REG_OFFSET_DMA3DAD)
#define BUFFER_REG_ADDR_DMA3CNT     (BUFFER_REG_BASE + REG_OFFSET_DMA3CNT)
#define BUFFER_REG_ADDR_DMA3CNT_L   (BUFFER_REG_BASE + REG_OFFSET_DMA3CNT_L)
#define BUFFER_REG_ADDR_DMA3CNT_H   (BUFFER_REG_BASE + REG_OFFSET_DMA3CNT_H)

#define BUFFER_REG_ADDR_TMCNT       (BUFFER_REG_BASE + REG_OFFSET_TMCNT)
#define BUFFER_REG_ADDR_TMCNT_L     (BUFFER_REG_BASE + REG_OFFSET_TMCNT_L)
#define BUFFER_REG_ADDR_TMCNT_H     (BUFFER_REG_BASE + REG_OFFSET_TMCNT_H)
#define BUFFER_REG_ADDR_TM0CNT      (BUFFER_REG_BASE + REG_OFFSET_TM0CNT)
#define BUFFER_REG_ADDR_TM0CNT_L    (BUFFER_REG_BASE + REG_OFFSET_TM0CNT_L)
#define BUFFER_REG_ADDR_TM0CNT_H    (BUFFER_REG_BASE + REG_OFFSET_TM0CNT_H)
#define BUFFER_REG_ADDR_TM1CNT      (BUFFER_REG_BASE + REG_OFFSET_TM1CNT)
#define BUFFER_REG_ADDR_TM1CNT_L    (BUFFER_REG_BASE + REG_OFFSET_TM1CNT_L)
#define BUFFER_REG_ADDR_TM1CNT_H    (BUFFER_REG_BASE + REG_OFFSET_TM1CNT_H)
#define BUFFER_REG_ADDR_TM2CNT      (BUFFER_REG_BASE + REG_OFFSET_TM2CNT)
#define BUFFER_REG_ADDR_TM2CNT_L    (BUFFER_REG_BASE + REG_OFFSET_TM2CNT_L)
#define BUFFER_REG_ADDR_TM2CNT_H    (BUFFER_REG_BASE + REG_OFFSET_TM2CNT_H)
#define BUFFER_REG_ADDR_TM3CNT      (BUFFER_REG_BASE + REG_OFFSET_TM3CNT)
#define BUFFER_REG_ADDR_TM3CNT_L    (BUFFER_REG_BASE + REG_OFFSET_TM3CNT_L)
#define BUFFER_REG_ADDR_TM3CNT_H    (BUFFER_REG_BASE + REG_OFFSET_TM3CNT_H)

#define BUFFER_REG_ADDR_SIOCNT      (BUFFER_REG_BASE + REG_OFFSET_SIOCNT)
#define BUFFER_REG_ADDR_SIODATA8    (BUFFER_REG_BASE + REG_OFFSET_SIODATA8)
#define BUFFER_REG_ADDR_SIODATA32   (BUFFER_REG_BASE + REG_OFFSET_SIODATA32)
#define BUFFER_REG_ADDR_SIOMLT_SEND (BUFFER_REG_BASE + REG_OFFSET_SIOMLT_SEND)
#define BUFFER_REG_ADDR_SIOMLT_RECV (BUFFER_REG_BASE + REG_OFFSET_SIOMLT_RECV)
#define BUFFER_REG_ADDR_SIOMULTI0   (BUFFER_REG_BASE + REG_OFFSET_SIOMULTI0)
#define BUFFER_REG_ADDR_SIOMULTI1   (BUFFER_REG_BASE + REG_OFFSET_SIOMULTI1)
#define BUFFER_REG_ADDR_SIOMULTI2   (BUFFER_REG_BASE + REG_OFFSET_SIOMULTI2)
#define BUFFER_REG_ADDR_SIOMULTI3   (BUFFER_REG_BASE + REG_OFFSET_SIOMULTI3)

#define BUFFER_REG_ADDR_KEYINPUT    (BUFFER_REG_BASE + REG_OFFSET_KEYINPUT)
#define BUFFER_REG_ADDR_KEYCNT      (BUFFER_REG_BASE + REG_OFFSET_KEYCNT)

#define BUFFER_REG_ADDR_RCNT        (BUFFER_REG_BASE + REG_OFFSET_RCNT)

#define BUFFER_REG_ADDR_JOYCNT      (BUFFER_REG_BASE + REG_OFFSET_JOYCNT)
#define BUFFER_REG_ADDR_JOYSTAT     (BUFFER_REG_BASE + REG_OFFSET_JOYSTAT)
#define BUFFER_REG_ADDR_JOY_RECV    (BUFFER_REG_BASE + REG_OFFSET_JOY_RECV)
#define BUFFER_REG_ADDR_JOY_RECV_L  (BUFFER_REG_BASE + REG_OFFSET_JOY_RECV_L)
#define BUFFER_REG_ADDR_JOY_RECV_H  (BUFFER_REG_BASE + REG_OFFSET_JOY_RECV_H)
#define BUFFER_REG_ADDR_JOY_TRANS   (BUFFER_REG_BASE + REG_OFFSET_JOY_TRANS)
#define BUFFER_REG_ADDR_JOY_TRANS_L (BUFFER_REG_BASE + REG_OFFSET_JOY_TRANS_L)
#define BUFFER_REG_ADDR_JOY_TRANS_H (BUFFER_REG_BASE + REG_OFFSET_JOY_TRANS_H)

#define BUFFER_REG_ADDR_IME         (BUFFER_REG_BASE + REG_OFFSET_IME)
#define BUFFER_REG_ADDR_IE          (BUFFER_REG_BASE + REG_OFFSET_IE)
#define BUFFER_REG_ADDR_IF          (BUFFER_REG_BASE + REG_OFFSET_IF)

#define BUFFER_REG_ADDR_WAITCNT     (BUFFER_REG_BASE + REG_OFFSET_WAITCNT)

// I/O registers

#define BUFFER_REG_DISPCNT     (*(vu16 *)BUFFER_REG_ADDR_DISPCNT)
#define BUFFER_REG_DISPSTAT    (*(vu16 *)BUFFER_REG_ADDR_DISPSTAT)
#define BUFFER_REG_VCOUNT      (*(vu16 *)BUFFER_REG_ADDR_VCOUNT)
#define BUFFER_REG_BG0CNT      (*(vu16 *)BUFFER_REG_ADDR_BG0CNT)
#define BUFFER_REG_BG1CNT      (*(vu16 *)BUFFER_REG_ADDR_BG1CNT)
#define BUFFER_REG_BG2CNT      (*(vu16 *)BUFFER_REG_ADDR_BG2CNT)
#define BUFFER_REG_BG3CNT      (*(vu16 *)BUFFER_REG_ADDR_BG3CNT)
#define BUFFER_REG_BG0HOFS     (*(vu16 *)BUFFER_REG_ADDR_BG0HOFS)
#define BUFFER_REG_BG0VOFS     (*(vu16 *)BUFFER_REG_ADDR_BG0VOFS)
#define BUFFER_REG_BG1HOFS     (*(vu16 *)BUFFER_REG_ADDR_BG1HOFS)
#define BUFFER_REG_BG1VOFS     (*(vu16 *)BUFFER_REG_ADDR_BG1VOFS)
#define BUFFER_REG_BG2HOFS     (*(vu16 *)BUFFER_REG_ADDR_BG2HOFS)
#define BUFFER_REG_BG2VOFS     (*(vu16 *)BUFFER_REG_ADDR_BG2VOFS)
#define BUFFER_REG_BG3HOFS     (*(vu16 *)BUFFER_REG_ADDR_BG3HOFS)
#define BUFFER_REG_BG3VOFS     (*(vu16 *)BUFFER_REG_ADDR_BG3VOFS)
#define BUFFER_REG_BG2PA       (*(vu16 *)BUFFER_REG_ADDR_BG2PA)
#define BUFFER_REG_BG2PB       (*(vu16 *)BUFFER_REG_ADDR_BG2PB)
#define BUFFER_REG_BG2PC       (*(vu16 *)BUFFER_REG_ADDR_BG2PC)
#define BUFFER_REG_BG2PD       (*(vu16 *)BUFFER_REG_ADDR_BG2PD)
#define BUFFER_REG_BG2X        (*(vu32 *)BUFFER_REG_ADDR_BG2X)
#define BUFFER_REG_BG2X_L      (*(vu16 *)BUFFER_REG_ADDR_BG2X_L)
#define BUFFER_REG_BG2X_H      (*(vu16 *)BUFFER_REG_ADDR_BG2X_H)
#define BUFFER_REG_BG2Y        (*(vu32 *)BUFFER_REG_ADDR_BG2Y)
#define BUFFER_REG_BG2Y_L      (*(vu16 *)BUFFER_REG_ADDR_BG2Y_L)
#define BUFFER_REG_BG2Y_H      (*(vu16 *)BUFFER_REG_ADDR_BG2Y_H)
#define BUFFER_REG_BG3PA       (*(vu16 *)BUFFER_REG_ADDR_BG3PA)
#define BUFFER_REG_BG3PB       (*(vu16 *)BUFFER_REG_ADDR_BG3PB)
#define BUFFER_REG_BG3PC       (*(vu16 *)BUFFER_REG_ADDR_BG3PC)
#define BUFFER_REG_BG3PD       (*(vu16 *)BUFFER_REG_ADDR_BG3PD)
#define BUFFER_REG_BG3X        (*(vu32 *)BUFFER_REG_ADDR_BG3X)
#define BUFFER_REG_BG3X_L      (*(vu16 *)BUFFER_REG_ADDR_BG3X_L)
#define BUFFER_REG_BG3X_H      (*(vu16 *)BUFFER_REG_ADDR_BG3X_H)
#define BUFFER_REG_BG3Y        (*(vu32 *)BUFFER_REG_ADDR_BG3Y)
#define BUFFER_REG_BG3Y_L      (*(vu16 *)BUFFER_REG_ADDR_BG3Y_L)
#define BUFFER_REG_BG3Y_H      (*(vu16 *)BUFFER_REG_ADDR_BG3Y_H)
#define BUFFER_REG_WIN0H       (*(vu16 *)BUFFER_REG_ADDR_WIN0H)
#define BUFFER_REG_WIN1H       (*(vu16 *)BUFFER_REG_ADDR_WIN1H)
#define BUFFER_REG_WIN0V       (*(vu16 *)BUFFER_REG_ADDR_WIN0V)
#define BUFFER_REG_WIN1V       (*(vu16 *)BUFFER_REG_ADDR_WIN1V)
#define BUFFER_REG_WININ       (*(vu16 *)BUFFER_REG_ADDR_WININ)
#define BUFFER_REG_WINOUT      (*(vu16 *)BUFFER_REG_ADDR_WINOUT)
#define BUFFER_REG_MOSAIC      (*(vu16 *)BUFFER_REG_ADDR_MOSAIC)
#define BUFFER_REG_BLDCNT      (*(vu16 *)BUFFER_REG_ADDR_BLDCNT)
#define BUFFER_REG_BLDALPHA    (*(vu16 *)BUFFER_REG_ADDR_BLDALPHA)
#define BUFFER_REG_BLDY        (*(vu16 *)BUFFER_REG_ADDR_BLDY)

#define BUFFER_REG_SOUND1CNT_L (*(vu16 *)BUFFER_REG_ADDR_SOUND1CNT_L)
#define BUFFER_REG_NR10        (*(vu8  *)BUFFER_REG_ADDR_NR10)
#define BUFFER_REG_SOUND1CNT_H (*(vu16 *)BUFFER_REG_ADDR_SOUND1CNT_H)
#define BUFFER_REG_NR11        (*(vu8  *)BUFFER_REG_ADDR_NR11)
#define BUFFER_REG_NR12        (*(vu8  *)BUFFER_REG_ADDR_NR12)
#define BUFFER_REG_SOUND1CNT_X (*(vu16 *)BUFFER_REG_ADDR_SOUND1CNT_X)
#define BUFFER_REG_NR13        (*(vu8  *)BUFFER_REG_ADDR_NR13)
#define BUFFER_REG_NR14        (*(vu8  *)BUFFER_REG_ADDR_NR14)
#define BUFFER_REG_SOUND2CNT_L (*(vu16 *)BUFFER_REG_ADDR_SOUND2CNT_L)
#define BUFFER_REG_NR21        (*(vu8  *)BUFFER_REG_ADDR_NR21)
#define BUFFER_REG_NR22        (*(vu8  *)BUFFER_REG_ADDR_NR22)
#define BUFFER_REG_SOUND2CNT_H (*(vu16 *)BUFFER_REG_ADDR_SOUND2CNT_H)
#define BUFFER_REG_NR23        (*(vu8  *)BUFFER_REG_ADDR_NR23)
#define BUFFER_REG_NR24        (*(vu8  *)BUFFER_REG_ADDR_NR24)
#define BUFFER_REG_SOUND3CNT_L (*(vu16 *)BUFFER_REG_ADDR_SOUND3CNT_L)
#define BUFFER_REG_NR30        (*(vu8  *)BUFFER_REG_ADDR_NR30)
#define BUFFER_REG_SOUND3CNT_H (*(vu16 *)BUFFER_REG_ADDR_SOUND3CNT_H)
#define BUFFER_REG_NR31        (*(vu8  *)BUFFER_REG_ADDR_NR31)
#define BUFFER_REG_NR32        (*(vu8  *)BUFFER_REG_ADDR_NR32)
#define BUFFER_REG_SOUND3CNT_X (*(vu16 *)BUFFER_REG_ADDR_SOUND3CNT_X)
#define BUFFER_REG_NR33        (*(vu8  *)BUFFER_REG_ADDR_NR33)
#define BUFFER_REG_NR34        (*(vu8  *)BUFFER_REG_ADDR_NR34)
#define BUFFER_REG_SOUND4CNT_L (*(vu16 *)BUFFER_REG_ADDR_SOUND4CNT_L)
#define BUFFER_REG_NR41        (*(vu8  *)BUFFER_REG_ADDR_NR41)
#define BUFFER_REG_NR42        (*(vu8  *)BUFFER_REG_ADDR_NR42)
#define BUFFER_REG_SOUND4CNT_H (*(vu16 *)BUFFER_REG_ADDR_SOUND4CNT_H)
#define BUFFER_REG_NR43        (*(vu8  *)BUFFER_REG_ADDR_NR43)
#define BUFFER_REG_NR44        (*(vu8  *)BUFFER_REG_ADDR_NR44)
#define BUFFER_REG_SOUNDCNT_L  (*(vu16 *)BUFFER_REG_ADDR_SOUNDCNT_L)
#define BUFFER_REG_NR50        (*(vu8  *)BUFFER_REG_ADDR_NR50)
#define BUFFER_REG_NR51        (*(vu8  *)BUFFER_REG_ADDR_NR51)
#define BUFFER_REG_SOUNDCNT_H  (*(vu16 *)BUFFER_REG_ADDR_SOUNDCNT_H)
#define BUFFER_REG_SOUNDCNT_X  (*(vu16 *)BUFFER_REG_ADDR_SOUNDCNT_X)
#define BUFFER_REG_NR52        (*(vu8  *)BUFFER_REG_ADDR_NR52)
#define BUFFER_REG_SOUNDBIAS   (*(vu16 *)BUFFER_REG_ADDR_SOUNDBIAS)
#define BUFFER_REG_SOUNDBIAS_L (*(vu8  *)BUFFER_REG_ADDR_SOUNDBIAS_L)
#define BUFFER_REG_SOUNDBIAS_H (*(vu8  *)BUFFER_REG_ADDR_SOUNDBIAS_H)
#define BUFFER_REG_WAVE_RAM0   (*(vu32 *)BUFFER_REG_ADDR_WAVE_RAM0)
#define BUFFER_REG_WAVE_RAM1   (*(vu32 *)BUFFER_REG_ADDR_WAVE_RAM1)
#define BUFFER_REG_WAVE_RAM2   (*(vu32 *)BUFFER_REG_ADDR_WAVE_RAM2)
#define BUFFER_REG_WAVE_RAM3   (*(vu32 *)BUFFER_REG_ADDR_WAVE_RAM3)
#define BUFFER_REG_FIFO_A      (*(vu32 *)BUFFER_REG_ADDR_FIFO_A)
#define BUFFER_REG_FIFO_B      (*(vu32 *)BUFFER_REG_ADDR_FIFO_B)

#define BUFFER_REG_DMA0SAD     (*(vu32 *)BUFFER_REG_ADDR_DMA0SAD)
#define BUFFER_REG_DMA0DAD     (*(vu32 *)BUFFER_REG_ADDR_DMA0DAD)
#define BUFFER_REG_DMA0CNT     (*(vu32 *)BUFFER_REG_ADDR_DMA0CNT)
#define BUFFER_REG_DMA0CNT_L   (*(vu16 *)BUFFER_REG_ADDR_DMA0CNT_L)
#define BUFFER_REG_DMA0CNT_H   (*(vu16 *)BUFFER_REG_ADDR_DMA0CNT_H)

#define BUFFER_REG_DMA1SAD     (*(vu32 *)BUFFER_REG_ADDR_DMA1SAD)
#define BUFFER_REG_DMA1DAD     (*(vu32 *)BUFFER_REG_ADDR_DMA1DAD)
#define BUFFER_REG_DMA1CNT     (*(vu32 *)BUFFER_REG_ADDR_DMA1CNT)
#define BUFFER_REG_DMA1CNT_L   (*(vu16 *)BUFFER_REG_ADDR_DMA1CNT_L)
#define BUFFER_REG_DMA1CNT_H   (*(vu16 *)BUFFER_REG_ADDR_DMA1CNT_H)

#define BUFFER_REG_DMA2SAD     (*(vu32 *)BUFFER_REG_ADDR_DMA2SAD)
#define BUFFER_REG_DMA2DAD     (*(vu32 *)BUFFER_REG_ADDR_DMA2DAD)
#define BUFFER_REG_DMA2CNT     (*(vu32 *)BUFFER_REG_ADDR_DMA2CNT)
#define BUFFER_REG_DMA2CNT_L   (*(vu16 *)BUFFER_REG_ADDR_DMA2CNT_L)
#define BUFFER_REG_DMA2CNT_H   (*(vu16 *)BUFFER_REG_ADDR_DMA2CNT_H)

#define BUFFER_REG_DMA3SAD     (*(vu32 *)BUFFER_REG_ADDR_DMA3SAD)
#define BUFFER_REG_DMA3DAD     (*(vu32 *)BUFFER_REG_ADDR_DMA3DAD)
#define BUFFER_REG_DMA3CNT     (*(vu32 *)BUFFER_REG_ADDR_DMA3CNT)
#define BUFFER_REG_DMA3CNT_L   (*(vu16 *)BUFFER_REG_ADDR_DMA3CNT_L)
#define BUFFER_REG_DMA3CNT_H   (*(vu16 *)BUFFER_REG_ADDR_DMA3CNT_H)

#define BUFFER_REG_TMCNT(n)    (*(vu16 *)(BUFFER_REG_ADDR_TMCNT + ((n) * 4)))
#define BUFFER_REG_TMCNT_L(n)  (*(vu16 *)(BUFFER_REG_ADDR_TMCNT_L + ((n) * 4)))
#define BUFFER_REG_TMCNT_H(n)  (*(vu16 *)(BUFFER_REG_ADDR_TMCNT_H + ((n) * 4)))
#define BUFFER_REG_TM0CNT      (*(vu32 *)BUFFER_REG_ADDR_TM0CNT)
#define BUFFER_REG_TM0CNT_L    (*(vu16 *)BUFFER_REG_ADDR_TM0CNT_L)
#define BUFFER_REG_TM0CNT_H    (*(vu16 *)BUFFER_REG_ADDR_TM0CNT_H)
#define BUFFER_REG_TM1CNT      (*(vu32 *)BUFFER_REG_ADDR_TM1CNT)
#define BUFFER_REG_TM1CNT_L    (*(vu16 *)BUFFER_REG_ADDR_TM1CNT_L)
#define BUFFER_REG_TM1CNT_H    (*(vu16 *)BUFFER_REG_ADDR_TM1CNT_H)
#define BUFFER_REG_TM2CNT      (*(vu32 *)BUFFER_REG_ADDR_TM2CNT)
#define BUFFER_REG_TM2CNT_L    (*(vu16 *)BUFFER_REG_ADDR_TM2CNT_L)
#define BUFFER_REG_TM2CNT_H    (*(vu16 *)BUFFER_REG_ADDR_TM2CNT_H)
#define BUFFER_REG_TM3CNT      (*(vu32 *)BUFFER_REG_ADDR_TM3CNT)
#define BUFFER_REG_TM3CNT_L    (*(vu16 *)BUFFER_REG_ADDR_TM3CNT_L)
#define BUFFER_REG_TM3CNT_H    (*(vu16 *)BUFFER_REG_ADDR_TM3CNT_H)

#define BUFFER_REG_SIOCNT      (*(vu16 *)BUFFER_REG_ADDR_SIOCNT)
#define BUFFER_REG_SIODATA8    (*(vu16 *)BUFFER_REG_ADDR_SIODATA8)
#define BUFFER_REG_SIODATA32   (*(vu32 *)BUFFER_REG_ADDR_SIODATA32)
#define BUFFER_REG_SIOMLT_SEND (*(vu16 *)BUFFER_REG_ADDR_SIOMLT_SEND)
#define BUFFER_REG_SIOMLT_RECV (*(vu64 *)BUFFER_REG_ADDR_SIOMLT_RECV)
#define BUFFER_REG_SIOMULTI0   (*(vu16 *)BUFFER_REG_ADDR_SIOMULTI0)
#define BUFFER_REG_SIOMULTI1   (*(vu16 *)BUFFER_REG_ADDR_SIOMULTI1)
#define BUFFER_REG_SIOMULTI2   (*(vu16 *)BUFFER_REG_ADDR_SIOMULTI2)
#define BUFFER_REG_SIOMULTI3   (*(vu16 *)BUFFER_REG_ADDR_SIOMULTI3)

#define BUFFER_REG_KEYINPUT    (*(vu16 *)BUFFER_REG_ADDR_KEYINPUT)
#define BUFFER_REG_KEYCNT      (*(vu16 *)BUFFER_REG_ADDR_KEYCNT)

#define BUFFER_REG_RCNT        (*(vu16 *)BUFFER_REG_ADDR_RCNT)

#define BUFFER_REG_IME         (*(vu16 *)BUFFER_REG_ADDR_IME)
#define BUFFER_REG_IE          (*(vu16 *)BUFFER_REG_ADDR_IE)
#define BUFFER_REG_IF          (*(vu16 *)BUFFER_REG_ADDR_IF)

#define BUFFER_REG_WAITCNT     (*(vu16 *)BUFFER_REG_ADDR_WAITCNT)

#endif
