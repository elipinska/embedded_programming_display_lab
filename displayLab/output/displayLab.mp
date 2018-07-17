Project:      output/displayLab
Build Number: 0
Date:         Tue Jul 17 22:39:04 2018
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   004E =     78. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  LoadConfigTBL_displaylab_Bank0
       017B  LoadConfigTBL_displaylab_Bank1
       019E  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   019E   0011 =     17. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       019E  __idata_start
       01AF  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01AF   0123 =    291. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01AF  LoadConfigTBL_displaylab_Ordered
       0274  _LoadConfigInit
       0274  LoadConfigInit
       027B  _LoadConfig_displaylab
       027B  LoadConfig_displaylab
       02D2  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   02D2   011B =    283. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02D2  _setDataLines
       02D2  __text_start
       02E7  _setE
       02EB  _clearE
       02EF  _setRs
       02F3  _clearRs
       02F7  _delay
       0316  _sendByte
       0365  _returnHome
       0378  _modeSet
       039D  _refreshDisplay
       03CE  _initDisplay
       03D9  _main
       03ED  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _displayBuffer
       0000  __data_start
       0011  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0011   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0011  __r1
       0012  __r0
       0013  __ramareas_end
       0013  __virtual_registers_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   00D7 =    215. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       00D4  _bGetPowerSetting
       00D4  bGetPowerSetting

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

