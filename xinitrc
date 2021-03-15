#!/bin/sh
xset -dpms &
#urxvtd -q -o -f &
xset s off &
setxkbmap pl &
ntfd &
wal -R &
#xrdb -edit /home/kubaws/.Xresources &
#xrdb ~/.Xresources &
xrandr --output DP-0 --mode 1920x1080 --rate 144.00 &
#picom --experimental-backend &
#zsh /home/kubaws/dwm-bar/dwm_bar.sh &

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

#while true; do
#	DATE_TIME=$(date +'%H:%M %a %b %d %Y')
#	RAM=$(free | awk "FNR == 2 { printf \"x = %s / %s * 100; scale = 0; x / 1\\n\", \$3, \$2 }" | bc -ql)
#	CPU=$(printf "100 - $(vmstat 1 2 | awk "FNR == 4 { print \$15 }")\n" | bc -ql)
#       BAT=$(cat /sys/class/power_supply/BAT0/capacity)
#	xsetroot -name "[ RAM $RAM% ] [ CPU $CPU% ] [ $DATE_TIME ]"
#	sleep 1
#done &
    # dwm fix for java applications
#    export _JAVA_AWT_WM_NONREPARENTING="1"
#
#    while true; do
#	 dwm
#	 sleep 1
#   done
#
#
# exec dwm 
exec bspwm
