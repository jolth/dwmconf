#!/usr/bin/env bash

xrdb -merge .Xresources
#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#if [ -x /usr/bin/xfce4-power-manager ] ; then
#    sleep 1
#    xfce4-power-manager &
#fi

#while true; do
    # by jolth:
    #xsetroot -name "$(date +"%A %F | %R:%S")"
    #xprop -root -notype -f WM_NAME "8u" \
    #	        | sed -n -r 's/WM_NAME = \"(.*)\"/\1/p'
    # git clone git://git.suckless.org/dwmstatus
    #dwmstatus
    #sleep 1s
#done &
#(watch -n 1 | xsetroot -name "$( date +"%F %I:%M %p" )") & 
#(conky | while read LINE; do xsetroot -name "$LINE"; done) &

# wallpaper
feh --bg-scale ~/.wallpapers/slim-dwm01.png
#feh --bg-scale ~/.wallpapers/dwm.png

# automatic transparency
# http://archive.debian.org/debian/pool/main/t/transset-df/
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

# opacity 
compton -cCGfF -b -i 0.75 --vsync opengl

conky | while read -r; do xsetroot -name "$REPLY"; done &
exec dwm
