#!/bin/bash

redshift &
xset r rate 200 60
exec dbus-launch --sh-syntax --exit-with-session i3
