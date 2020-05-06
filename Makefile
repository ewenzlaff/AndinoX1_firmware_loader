BOARD_TAG = pro
BOARD_SUB = 8MHzatmega328
ARDUINO_PORT = /dev/ttyAMA0
ARDUINO_LIBS = EEPROM TimerOne
ARDUINO_SKETCHBOOK = ./

#AVRDUDE_ISP_BAUDRATE = 38400

MONITOR_BAUDRATE = 38400
AVRDUDE_ARD_BAUDRATE = 57600 # default value
AVRDUDE_ARD_PROGRAMMER = arduino
#RESET_CMD = ~/Arduino-Makefile/bin/ard-reset-arduino $(ARDUINO_PORT)  --verbose --period 1 # test for cable mode
RESET_CMD = ./reset.py
include $(ARDMK_DIR)/Arduino.mk
