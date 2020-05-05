#!/usr/bin/env python


from gpiozero import LED
from time import sleep

led = LED(18) # GPIO 18 is reset pin for the AVR

led.on()
sleep(0.1)
led.off()
exit()  # important top end the script in time


