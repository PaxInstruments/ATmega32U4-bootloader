This is the stock Caterina bootloader (from Arduino 1.0.5)

Changes from the stock bootloader:
* All targets: Manufacturer changed to ‘Pax Instruments’
* All targets: Default Lock bits are 0x2F
* T400: VID/PID changed to match Pax Instruments T400 VID/PID
* T400: Product name changed to ‘T400’
* T400: Status and RX/TX LEDs disabled, since they are not present in hardware.

Notes on building the Caterina bootloader:

1. Scripts are tested under OS X, probably work on linux, type by hand for Windows
2. Must download LUFA-111009 and extract to this directory.
3. Use ./build.sh to build the firmware for all BlinkyTape devices
4. Use ./program.sh xxx to program the firmware for a target, for example: ./program.sh BlinkyTape

