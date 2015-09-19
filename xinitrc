# middle click scroll
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
 
# disable touchpad (x1 carbon)
#xinput set-prop 10 "Device Enabled" 0

# swap control and caps lock
/usr/bin/xmodmap ~/.xmodmap &

# brightness / sound control
#xbindkeys -f ~/.xbindkeysrc

# normal pointer please
xsetroot -cursor_name left_ptr &

# x settings
xrdb -merge ~/.xresources &

# don't blind me
xbacklight -set 20

# ssh
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# wallpaper
sh ~/.fehbg &

# screensaver / locker
xscreensaver -no-splash &
xss-lock -- xscreensaver-command --lock &

# term
export TERM=xterm

# power manager
xfce4-power-manager &

# volume control
xfce4-volumed &

# git annex
git annex assistant --autostart &

# window manager
exec /usr/bin/spectrwm
