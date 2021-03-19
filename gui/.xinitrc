#!/usr/bun/bash

xset r rate 200 60
xset s off
xset -dpms
setxkbmap br
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap

picom -i 1.0 &
exec i3

