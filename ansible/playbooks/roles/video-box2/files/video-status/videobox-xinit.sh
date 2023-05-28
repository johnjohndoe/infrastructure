#!/bin/sh

xautolock -locker /usr/bin/xtrlock -time 1 &
setxkbmap -option srvrkeys:none
Xephyr :9 -screen 660x404 -no-host-grab &
xclock -digital -update 1 -geometry +1-1 &
xset -dpms
xset s off
xset s noblank
xsetroot -solid '#800080' -cursor_name X_cursor
while ! DISPLAY=:9 xsetroot -solid '#800080' -cursor_name X_cursor; do sleep 0.2; done
xsetroot -solid '#800080' -cursor_name X_cursor
systemctl restart mpv video-status
xautolock -locknow
xterm -geometry 105+20+408 &
sleep 2
while ! DISPLAY=:9 xsetroot -solid '#800080' -cursor_name X_cursor; do sleep 0.2; done
sleep 30d

