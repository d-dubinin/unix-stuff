#!/bin/bash
status=$(playerctl metadata --format "{{ status }}")

state () {
	state=$(playerctl metadata --format "{{ status }}" | sed 's/\Playing//' | sed 's/\Paused//')

	echo -n %{A:playerctl --player=vlc,spotify play-pause:}$state%{A}
}
	statel () {

	state_l=$(playerctl metadata --format "{{ status }}" | sed 's/\Playing/ /' | sed 's/\Paused/ /')

	
	echo -n %{A:playerctl --player=vlc,spotify previous:} %{A}
}

stater () {
	state_r=$(playerctl metadata --format "{{ status }}" | sed 's/\Playing//' | sed 's/\Paused//')

	echo -n %{A:playerctl --player=vlc,spotify next:}%{A}
}


while true; do
	echo -e "%{l} $(statel) $(state) $(stater)" 
sleep 1;
done
