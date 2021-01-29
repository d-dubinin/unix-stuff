#!/usr/bin/env bash
# https://redd.it/cz5avk
IFS=$'\n\t'

scroll=(unbuffer zscroll -l 20 -d 0.5 -r true)
icon_playing=$'\u25B6'
icon_paused=$'\u23F8'

while true; do
	# requires playerctl>=2.0
	playerctl --follow metadata --format \
		$'{{status}}\t{{artist}} - {{title}}' |
	while read -r status line; do
		(( ${#pid} )) && kill "$pid" > /dev/null 2>&1
		case $status in
			Paused) "${scroll[@]}" "$line" & ;;
			Playing) "${scroll[@]}" "$line" & ;;
			*) echo "(STOPPED)" ;;
		esac
		pid=$!
	done
	# no current players
	echo '(STOPPED)'
	sleep 15
done
