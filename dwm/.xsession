#!/usr/bin/env bash

xrdb -merge .Xresources
#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#if [ -x /usr/bin/xfce4-power-manager ] ; then
#    sleep 1
#    xfce4-power-manager &
#fi

while true; do
    ##xsetroot -name "$(date +"%F %I:%M %p")"
    ##xsetroot -name "$(date +"%a, %D | %R |")"
    #xsetroot -name "$(date +"%A, %d-%m-%Y | %R")"
    xsetroot -name "$(date +"%A %F | %R:%S")"
    ##$(free -m |awk '/cache:/ { print $3"M" }')
    ##sleep 1
    sleep 1s
done &
#(watch -n 1 | xsetroot -name "$( date +"%F %I:%M %p" )") & 
#(conky | while read LINE; do xsetroot -name "$LINE"; done) &

exec dwm
