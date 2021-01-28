#!/bin/bash

Date() {
	TIME=$(date "+%b %d | %H:%M")
	DAY=$(date "+%a,")

	echo "${DAY^} ${TIME^}"
}

while true; do
	echo "${c}%{F#ffffff} $(Date)"
sleep 1m;
done
