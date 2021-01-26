#!/bin/sh

#worskpaces in bspwm using bspc socket
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
showws() { 
echo "$1" |  sed --posix -e 's/:/\ /g'\
	-e 's/WMeDP1//g'\
	-e 's/WMeDP-1//g'\
	-e 's/meDP-[0-9]//g'\
	-e 's/\ meDP-[0-9]\ //g'\
	-e 's/MeDP-[0-9]//g'\
	-e 's/WMHDMI-[0-9]//g'\
	-e 's/WmHDMI-[0-9]//g'\
	-e 's/Desktop//g'\
	-e 's/LT//g'\
	-e 's/TF//g'\
	-e 's/TT//g'\
	-e 's/G//g'\
	-e 's/S/[stickied]/g'\
	-e "s/\ O/\ %{B$BGAOc}%{F$FGAOc}\ /g"\
	-e "s/\ o/\ %{F$FGAnOc}%{B$BGnAOc}\ /g"\
	-e "s/\ f/\ %{F$FGnAnOc}%{B$BGnAnOc}\ /g"\
	-e "s/\ u/\ %{F#DC322F}/g"\
	-e "s/\ F/\ %{B$BGAOc}%{F$FGAOc}\ /g"\
	-e "s/\ \ //g"\
	-e "s/\ //"\



	#-e 's/WMeDP1//g'\
	#-e 's/LT//g'\
	#-e 's/TT//g'\
	#-e 's/G//g'\
	#-e 's/O/%{U#A54242}%{F#A54242}%{!u}/'\
	#-e 's/\ F/\ %{U#A54242}%{F#D9CBBE}%{!u}/'\
	#-e 's/\ o/%{-u}\ %{-u}%{F#A54242}/g'\
	#-e 's/\ u/%{-u}\ %{-u}%{F#87A7B2}/g'\
	#-e 's/\ f/%{-u}\ %{-u}%{F#D9CBBE}/g' 
}
while true; do
	state=$(bspc subscribe -c 1 report)
	showws "$state"
	bspc subscribe -c 2 report > /tmp/tests
done
