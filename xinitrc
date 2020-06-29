#!/usr/bun/bash

xset r rate 200 40
setxkbmap br

picom &
exec i3

