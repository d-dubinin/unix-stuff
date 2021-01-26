#!/usr/bin/bash

killall -q lemonbar
FONT="Iosevka Nerd Font:size=7"
if test -f $HOME/.cache/wal/colors.sh; then
 source $HOME/.cache/wal/colors.sh
BG="$color0"
FG="$color7"
BGAOc="$color13" #background of active tags
FGAOc="$color7" #foreground of active and occupied tags
BGAnOc="$color13" #background of active not occupied tags
FGAnOc="$color7" #foreground of active not occupied tags
BGnAOc="$color8" #background of not active and occupied tags
BGnAnOc="$BG" #background of not active and not occupied tags
FGnAnOc="$color7" #foreground of not active not occupied tags
else
BGAOc=#D7B8FE #background of active tags
FGAOc=#F0EEF0 #foreground of active and occupied tags
BGAnOc=#D7B8FE #background of active not occupied tags
FGAnOc=#F0EEF0 #foreground of active not occupied tags
BGnAOc=#3B4252 #background of not active and occupied tags
FGnAOc=#D7B8FE #foreground of not active and occupied tags
BGnAnOc=#1D1B1F #background of not active and not occupied tags
FGnAnOc=#F0EEF0 #foreground of not active not occupied tags
fi
pkill -f .config/lemonbar/scripts/workspaces.sh
pkill -f .config/lemonbar/scripts/time.sh
pkill -f .config/lemonbar/scripts/battery.sh
pkill -f .config/lemonbar/scripts/activewindow.sh
#.config/lemonbar/scripts/activewindow.sh	  | lemonbar -f $FONT -g 350x20+225+2 -B $BG&
.config/lemonbar/scripts/workspaces.sh | lemonbar -f $FONT -g 260x30+32+5 -B $BG -u 2 &
.config/lemonbar/scripts/time.sh	  | lemonbar -f $FONT -g 60x30+1860+5 -B $BG&
.config/lemonbar/scripts/battery.sh	  | lemonbar -f $FONT -g 65x30+1780+5 -B $BG&
echo "%{F$BG} " | lemonbar -f 'NotoSansMono Nerd Font:size=10' -g 32x30+0+5 -B $color10 -p&


