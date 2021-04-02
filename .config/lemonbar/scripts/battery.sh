#!/bin/sh
if test -f $HOME/.cache/wal/colors.sh; then
 source $HOME/.cache/wal/colors.sh
BG="$color0"
FG="$color7"
BGtwo="$color8"
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
Battery() {
	STATE=$( acpi | awk '{print $4}' | sed 's/,//')
	#battery_status="$(acpi -b | awk -F '[[:space:]]+|,' '{ print $3 }')"
	#case "$battery_status" in
		#'Charging')
			#echo " %{F#EA7866}$STATE  " ;;
			##echo "%{B#000433} %{F#EA7866}$STATE  " ;;
		#'Discharging')
			#echo " %{F#CE6864}$STATE  " ;;
			##echo "%{B#000433} %{F#CE6864}$STATE  " ;;
		#'Full') 
			#echo " %{F#B5BD68}$STATE  " 
			##echo "%{B#000433} %{F#00FF00}$STATE  " 
	#esac
	echo "%{F#ffffff} $STATE"
}

while true; do
	echo "%{l}%{F$color10} $(Battery)"
	sleep 1m;
done
