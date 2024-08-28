#!/bin/bash
#
# Change brightness of keyboard-light to 0
#
#

sudo echo 0 | sudo tee /sys/class/leds/tpacpi\:\:kbd_backlight/device/leds/tpacpi\:\:kbd_backlight/brightness

sudo echo 0 | sudo tee  /sys/class/leds/tpacpi\:\:kbd_backlight/device/leds/tpacpi\:\:power/brightness 

sudo echo 0 | sudo tee  /sys/class/leds/tpacpi\:\:kbd_backlight/device/leds/tpacpi\:\:lid_logo_dot/brightness 

sudo echo 0 | sudo tee  /sys/class/leds/tpacpi\:\:kbd_backlight/device/leds/tpacpi\:\:thinkvantage/brightness

sudo echo 0 | sudo tee /sys/class/leds/input5\:\:capslock/brightness

sudo echo 0 | sudo tee /sys/class/leds/input5\:\:numlock/brightness

sudo echo 0 | sudo tee echo 0 | sudo tee  /sys/class/leds/platform\:\:micmute/brightness
