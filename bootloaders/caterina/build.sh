#!/bin/bash
make clean
make VID=0x2B51 PID=0x1000 F_CPU=16000000
mv Caterina.hex Caterina-t400.hex

make VID=0x2B51 PID=0x1001 F_CPU=16000000
mv Caterina.hex Caterina-t400d.hex
