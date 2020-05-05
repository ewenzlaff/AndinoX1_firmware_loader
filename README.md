# Andino firmware loader
The given repository is a workflow for building and uploading the original firmware of the Andino X1 (https://andino.shop) from the Raspberry Pi section directly to the Arduino part without using the external USB Port.


## Motivation
I've got the Andino for a smart home project to remote control the heating of a vacation home and to monitor it in the winter. Due to the fact that I'm not having the time to develop the software fully in advance I wanted to install the device first and
do the development remotly. This means everything has to work from the commandline without plugging cables around.

## The Problem
The Andino communicates from thr Raspberry to the Arduino and vice versa thru a serial line - > /dev/ttyAMA0
This UART uses GPIO 14 and 15 of the Pi. It doesnt

![Image of Manual screenshot](https://github.com/andino-systems/Andino-X1/blob/master/doc/img/Andino-X1-Block-schema-1024x671.png)


The part of manual of the Andino X1 that covers the Arduino programming is quite weak. It suggests using ino (https://pypi.org/project/ino/) and avr dude to upload the already compiled code

![Image of Manual screenshot](https://github.com/ewenzlaff/AndinoX1_firmware_loader/blob/master/Andino_Manual_Screenshot.png)



## Prerequisites
- Arduino-Makefile (https://github.com/sudar/Arduino-Makefile)
- Arduino IDE (tested with 1.8.12)


