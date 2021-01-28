#!/bin/sh

#worskpaces in bspwm using bspc socket
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
showws() { 
echo "$1" |  sed --posix -e 's/:/\ /g'\
	-e 's/WMeDP1//g'\
	-e 's/WMeDP1//g'\
	-e 's/meDP[0-9]//g'\
	-e 's/\ meDP-[0-9]\ //g'\
	-e 's/MeDP[0-9]//g'\
	-e 's/WMHDMI[0-9]//g'\
	-e 's/WmHDMI[0-9]//g'\
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
	-e 's/mHDMI[0-9]//g'\
	-e 's/MHDMI[0-9]//g'\
	-e 's/WmeDP[0-9]//g'\

}
while true; do
	state=$(bspc subscribe -c 1 report)
	showws "$state"
	bspc subscribe -c 2 report > /tmp/tests
done
