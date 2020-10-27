#!/usr/bun/bash

xset r rate 200 40
xset s off
setxkbmap br

picom -i 1.0 &
exec i3

