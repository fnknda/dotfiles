#!/usr/bun/bash

xset r rate 200 40
setxkbmap -layout br

picom &
exec i3

