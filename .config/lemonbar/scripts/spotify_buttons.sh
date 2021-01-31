#!/bin/bash


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

status=$(playerctl --player spotify metadata --format "{{ status }}")

state () {
	state=$(playerctl --player spotify metadata --format "{{ status }}" | sed 's/\Playing//' | sed 's/\Paused//')

	echo -n %{A:playerctl --player=vlc,spotify play-pause:}$state%{A}
}

statel (){
	statel=$(playerctl --player spotify metadata --format "{{ status }}" | sed 's/\Playing//' | sed 's/\Paused//')

	echo -n %{A:playerctl --player=vlc,spotify previous:}$statel%{A}
}

stater (){
	stater=$(playerctl --player spotify metadata --format "{{ status }}" | sed 's/\Playing//' | sed 's/\Paused//')

	echo -n %{A:playerctl --player=vlc,spotify next:}$stater%{A}

}

while true; do
	echo -e "%{c}%{F$color10}$(statel) $(state) $(stater)"
       sleep 1;	
done
