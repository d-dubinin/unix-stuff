#!/bin/sh

getApp() {
app=$(ps -e | grep $(xdotool getwindowpid $(xdotool getwindowfocus)) | grep -v grep | awk '{print $4}')
case $app in
"") echo -n "desktop";;
*) echo -n "$app";;
esac
}
while true; do
echo " %{c}%{F#D9CBBE}$(getApp) "
bspc subscribe -c 2 report > /dev/null
done
