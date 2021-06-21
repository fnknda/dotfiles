#!/usr/bin/bash

xinput set-prop $(xinput | rg Touchpad | cut -d '=' -f2 | rg -o '^\d+') "libinput Tapping Enabled" 1

kbcfg
redshift &
exec dbus-launch i3
