#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Multi monitor support:
xrandr --output VGA-0 --off --output DVI-D-0 --mode 1600x1200 --pos 0x1200 --rotate normal --output DVI-D-1 --mode 1600x1200 --pos 1600x1200 --rotate normal --output HDMI-0 --mode 1600x1200 --pos 800x0 --rotate normal

# Compositor:
#compton -bcd &

# Start awesomewm:
exec awesome

# Set keyboard layout:
setxkbmap gb
