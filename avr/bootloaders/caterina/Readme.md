# Modified Caterina bootloader (from Arduino 1.0.5)

## Changes from the stock bootloader
*  All targets: Manufacturer changed to ‘Pax Instruments’
*  All targets: Default Lock bits are 0x2F
*  T400: VID/PID changed to match Pax Instruments T400 VID/PID
*  T400: Product name changed to ‘T400 Bootloader’
*  T400: Status and RX/TX LEDs disabled, since they are not present in hardware.
*  T400: Board power enabled at bootloader start
*  T400: Holding down D+E buttons at poweron puts the board into firmware recovery mode


## Building the Caterina bootloader

These instructions are tested with OS X 10.9, but should work with any OS X variant and on Linux with slight modifications.

First, install AVR Crosspack to provide avr-gcc. The version used for production is 20130212. The direct link is:

	http://www.obdev.at/downloads/crosspack/CrossPack-AVR-20130212.dmg
	
AVR Crosspack provides a compiler for the bootloader, as well as avrdude for flashing the bootloader to the device.

*Note: It might also be necessicary to install XCode for an updated Make, but I am not sure.*

Next, clone the repository:

	git clone git@github.com:PaxInstruments/ATmega32U4-bootloader.git

Next, download LUFA-111009 (the exact version is important!) and extract it:

	cd ATmega32U4-bootloader/bootloaders/caterina
	curl -O -L http://www.github.com/abcminiuser/lufa/archive/LUFA-111009.zip
	unzip LUFA-111009.zip
	mv lufa-LUFA-111009/ LUFA-111009
	
Finally, build the firmware for all devices:

	./build.sh
	
Alternatively, firmware for a single device could be built by calling Make and specifying the VID and PID:

	make VID=0x2B51 PID=0x1001 F_CPU=8000000
	
## Programming the bootloader

First, connect the usbtiny ISP to the computer, and to the T400/T400D. Target power can be supplied through the ISP.

Hold down the power button on the device.

Use ./program.sh to program the device. For the T400:

	./program.sh T400
	
And for the T400D:

	./program.sh T400D
