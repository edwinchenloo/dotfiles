#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# TODO -
# xsetroot -cursor_name left_ptr

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login

# exec xmonad

if [ -x /usr/bin/numlockx ]; then
  /usr/bin/numlockx on
fi

# sxhkd &
# st -e "tmux" &
# exec bspwm

# exec awesome

# exec twm

# while :; do
  "$HOME/.dotfiles/dwm/dwm"
# done

# exec "$HOME/.dotfiles/dwm/dwm"

# "$HOME/.dotfiles/dwm/dwm" &
# exec "$HOME/.dotfiles/sleeper.sh"

# exec i3
# exec awesome

# exec herbstluftwm --locked
# xrandr --output VGA-1 --auto --right-of HDMI-2
