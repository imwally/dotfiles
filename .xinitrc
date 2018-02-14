# middle click scroll
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
 
# disable touchpad (x1 carbon)
xinput set-prop 11 "Device Enabled" 0

# swap control and caps lock
/usr/bin/xmodmap ~/.xmodmap &

# brightness / sound control
xbindkeys -f ~/.xbindkeysrc

# normal pointer please
xsetroot -cursor_name left_ptr &

# x settings
xrdb < ~/.xresources

# don't blind me
xbacklight -set 30

# ssh
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# gpg
eval $(gpg-agent --daemon)

# wallpaper
#sh ~/.fehbg &
xsetroot -solid "#222222"

# screensaver / locker
xscreensaver -no-splash &
xss-lock -- xscreensaver-command --lock &

# term
export TERM=xterm

# power manager
xfce4-power-manager &

# volume control
#xfce4-volumed &

# for dmenu and emacs
export PATH="$PATH:$HOME/Apps/bin:$HOME/Code/go/bin:/usr/local/go/bin"

# i3status
i3status| dzen2 -w 900 -x 1632 -h 35 -ta right -fn terminus:antialias=false:size=9 -bg "#111111" -fg "#dddddd" &

# window manager
exec /usr/bin/spectrwm
