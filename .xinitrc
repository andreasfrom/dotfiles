#!/bin/sh

userresources=$HOME/.Xresources
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

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/* ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# custom
setxkbmap -layout us -variant colemak
xsetroot -cursor_name left_ptr
xset -b
xbacklight = 0
xmodmap ~/.Xmodmap

sh ~/.fehbg &
compton -b &
unclutter -idle 10 &
redshift -l 55.6468851:12.057381 &
emacs --daemon &
urxvtd &

exec xmonad
