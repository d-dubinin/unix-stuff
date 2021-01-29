#!/bin/bash


Volume(){

echo "$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))"

}

while true; do
	echo "%{l} $(Volume)"						
	sleep 0.5;		
done	
