#!/bin/bash
make clean
rm Caterina-T400.hex
rm Caterina-T400d.hex

make VID=0x2B51 PID=0x1000 F_CPU=8000000
mv Caterina.hex Caterina-T400.hex

make VID=0x2B51 PID=0x1001 F_CPU=8000000
mv Caterina.hex Caterina-T400d.hex
