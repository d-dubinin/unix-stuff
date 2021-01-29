#!/bin/bash

if test -f $HOME/.cache/wal/colors.sh; then
 source $HOME/.cache/wal/colors.sh
BG="$color0"
FG="$color7"
BGAOc="$color13" #background of active tags
FGAOc="$color0" #foreground of active and occupied tags
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


mpd_status() {
  status=$(mpc | sed -n 2p | awk -F " " '{print $1}')
  output1=$(mpc | tail -1 | cut -f1 -d " " --complement )
  
  # output
  if [[ $status == '[playing]' ]] ; then
    nowplaying=$(mpc current | cut -c -60)
    timer=$(mpc | sed -n 2p | awk -F " " '{print $3}')
    echo "$nowplaying [$timer]   "
  elif [[ $status == '[paused]' ]] ; then
    nowplaying=$(mpc current | cut -c -60)
    echo "$nowplaying [pause]   "
  else
    echo "mpd is not active"
  fi
}

#mpc_volume() {
# mpc volume | cut -d':' -f2 | tr -d ' '
#}


while true; do
  if [[ $(mpd_status) != "mpd is not active" ]] ; then
    echo -e "%{c}%{F$FG} $(mpd_status)"
  else
    echo -e "%{c}%{F$FG}No music players active%{F-}"
  fi
  sleep 1
done

