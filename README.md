# Andino firmware loader
The given repository is a workflow for building and uploading the original firmware of the Andino X1 (https://andino.shop) from the Raspberry Pi section directly to the Arduino part without using the external USB Port.


## Motivation
I've got the Andino for a smart home project to remote control the heating of a vacation home and to monitor it in the winter. Due to the fact that I'm not having the time to develop the software fully in advance I wanted to install the device first and
do the development remotly. This means everything has to work from the commandline without plugging cables around.

## The Problem
To compile and upload the firmware in the shell some adaptions had to made. 
The part of manual of the Andino X1 that covers the Arduino programming is quite weak. It suggests using ino (https://pypi.org/project/ino/) and avr dude to upload the already compiled code.

![Image of Manual screenshot](https://github.com/ewenzlaff/AndinoX1_firmware_loader/blob/master/Andino_Manual_Screenshot.png)
### Compiling the Source Code
The source code did only compile in the IDE but not in the shell, whether with INO nor with the Arduino-Makefile due to the fact that the IDE does some pre processing on the code. The firmware does not have any function prototypes. These had to
be added manualy (I'm sure there is somewhere a nice tool which does it)
### Reset Sequence

The Andino communicates from thr Raspberry to the Arduino and vice versa thru the serial device ```/dev/ttyAMA0```
This UART uses GPIO 14 and 15 of the Pi. It doesnt provide the DTR line to toggle the reset to enter the bootloader like the FTDI chip does which is used for the USB connection.

![Image of Manual screenshot](https://github.com/andino-systems/Andino-X1/blob/master/doc/img/Andino-X1-Block-schema-1024x671.png)

Fortunately the reset could be done via GPIO 18 and the Arduino-Makefile provides the  ``` RESET_CMD ``` variable that could be loaded with a script to toggle the pin.



![Image of Manual screenshot](https://github.com/ewenzlaff/AndinoX1_firmware_loader/blob/master/Andino_BaseBord_screenshot.png)




## Prerequisites
- Arduino-Makefile (https://github.com/sudar/Arduino-Makefile)
- Arduino IDE (tested with 1.8.12)

## Usage
TBD

