xrdb -merge .Xresources
setxkbmap us -variant colemak
xmodmap ~/.Xmodmap
xsetroot -cursor_name left_ptr

urxvtd -q -f -o
dropboxd &

xset -b #disable beep
xbacklight = 0

urxvtc &

exec xmonad
