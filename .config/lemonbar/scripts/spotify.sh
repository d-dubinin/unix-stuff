#!/bin/bash
status=$(playerctl metadata --format "{{ status }}")
title=`exec playerctl metadata xesam:title`
artist=`exec playerctl metadata xesam:artist`

spotify_status(){
	status=$(playerctl metadata --format "{{ status }}")

	if [[ $status == 'Playing' ]] ; then
		echo "$(playerctl metadata --format "{{ artist }}") - $(playerctl metadata --format "{{ title }}")"
	elif [[ $status == 'Paused' ]] ; then
	echo "$(playerctl metadata --format "{{ artist }}") - $(playerctl metadata --format "{{ title }}")" 
else
	echo "Spotify is not active"
fi
}

state () {
	state=$(playerctl metadata --format "{{ status }}" | sed 's/\Playing//' | sed 's/\Paused//')

	echo -n %{A:playerctl --player=vlc,spotify play-pause:}$state%{A}
}
while true; do
	if [[ $(spotify_status) != "Spotify is not active" ]] ; then
		echo -e "%{l} %{A:playerctl --player=vlc,spotify previous:} %{A}$(state) %{A:playerctl --player=vlc,spotify next:}%{A} $(spotify_status) "

	else
		echo -e "%{c}Spotify is not active"
	fi
	sleep 1;
done
