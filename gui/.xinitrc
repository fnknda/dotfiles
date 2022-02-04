#!/usr/bin/bash

kbcfg
battery_daemon &
feh --bg-fill ~/Documents/wallpapers/current.*
picom -i 1.0 --no-fading-openclose -D 0 -o 0 -e 1 &
exec dbus-launch i3
