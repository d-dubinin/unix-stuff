#!/bin/sh

ActiveWindow() {
printf " $(xdotool getwindowfocus getwindowname)"
}

while true; do
	echo "%{l}$(ActiveWindow)"
	sleep 0s;
done
