#!/bin/bash

# For Analog LED Fader only right now
avrdude -c usbtiny  -pm32u4 -Pusb -Uflash:w:Caterina-AnalogLEDFader.hex:i -Ulock:w:0x2F:m -Uefuse:w:0xcb:m -Uhfuse:w:0xd8:m -Ulfuse:w:0xff:m -B 6
