#!/usr/bin/bash

xinput set-prop $(xinput | grep Touchpad | cut -d '=' -f2 | awk '{print $1}') "libinput Tapping Enabled" 1

kbcfg
feh --bg-fill ~/Documents/wallpapers/penguin.png
picom -i 1.0 --no-fading-openclose -D 0 -o 0 -e 1 &
exec dbus-launch i3
