# middle click scroll
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
 
# swap control and caps lock
/usr/bin/xmodmap ~/.Xmodmap &

# brightness / sound control
#xbindkeys -f ~/.xbindkeysrc

# normal pointer please
#xsetroot -cursor_name left_ptr &

# x settings
xrdb -merge ~/.Xresources &

# don't blind me
#xbacklight -set 20

# ssh
#eval $(ssh-agent)
#export SSH_AUTH_SOCK

# wallpaper
sh ~/.fehbg &

# screensaver
#/usr/bin/xscreensaver --no-splash &

# term
export TERM=xterm

# compositor
compton &

# window manager
exec /usr/bin/ratpoison
