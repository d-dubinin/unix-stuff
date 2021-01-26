#!/usr/bin/bash

killall -q lemonbar

BG="#222222"
FONT="Iosevka Nerd Font:size=7"
pkill -f .config/lemonbar/scripts/workspaces.sh
pkill -f .config/lemonbar/scripts/time.sh
pkill -f .config/lemonbar/scripts/battery.sh
pkill -f .config/lemonbar/scripts/activewindow.sh
#.config/lemonbar/scripts/activewindow.sh	  | lemonbar -f $FONT -g 350x20+225+2 -B $BG&
.config/lemonbar/scripts/workspaces.sh | lemonbar -f $FONT -g 200x20+20+2 -B $BG -u 2 &
.config/lemonbar/scripts/time.sh	  | lemonbar -f $FONT -g 70x20+1830+2 -B $BG&
.config/lemonbar/scripts/battery.sh	  | lemonbar -f $FONT -g 50x20+1780+2 -B $BG&

