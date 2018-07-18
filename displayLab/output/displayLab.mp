Project:      output/displayLab
Build Number: 0
Date:         Wed Jul 18 23:59:55 2018
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
                            text   02D2   0162 =    354. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02D2  _setDataLines
       02D2  __text_start
       02E6  _setE
       02EA  _clearE
       02EE  _setRs
       02F2  _clearRs
       02F6  _delay
       0315  _sendNibble
       032F  _sendByte
       0357  _returnHome
       036A  _modeSet
       038F  _refreshDisplay
       03F1  _initDisplay
       0420  _main
       0434  __text_end

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

