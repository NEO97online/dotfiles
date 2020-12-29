#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?* ; do
      [ -x "$f" ] && . "$f"
  done
  unset f
fi

export XDG_SESSION_TYPE=X11
export DESKTOP_SESSION=X11 
export XDG_CURRENT_DESKTOP=X11
export XDG_SESSION_DESKTOP=X11

# set display environment
systemctl --user import-environment DISPLAY

xrdb -load ~/.Xresources

exec bspwm
