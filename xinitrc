#!/bin/sh

xrandr --output VGA-1 --off --output HDMI-1 --mode 1600x1200 --pos 744x0 --rotate normal --output DVI-D-1 --mode 1600x1200 --pos 1600x1200 --rotate normal --output DVI-D-2 --mode 1600x1200 --pos 0x1200 --rotate normal --dpi 99.5

sleep 3

compton -bcd &

exec awesome &

xset +fp /usr/share/fonts/local
xset fp rehash

screen /home/david/.bin/cwp.sh
