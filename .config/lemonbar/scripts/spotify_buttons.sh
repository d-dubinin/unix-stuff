#!/bin/bash
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
	echo -e "%{l}$(statel) $(state) $(stater)"
       sleep 1;	
done
