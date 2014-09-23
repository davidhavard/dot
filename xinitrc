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
xrandr --output VGA-1 --off --output HDMI-1 --mode 1600x1200 --pos 744x0 --rotate normal --output DVI-D-1 --mode 1600x1200 --pos 1600x1200 --rotate normal --output DVI-D-2 --mode 1600x1200 --pos 0x1200 --rotate normal --dpi 99.5

# Compositor:
compton -bcd &

# Start awesomewm:
exec awesome &

# Load fonts:
xset +fp /usr/share/fonts/local
xset fp rehash
