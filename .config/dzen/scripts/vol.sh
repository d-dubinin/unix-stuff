#!/bin/bash

Vol(){
echo -e "Volume"
	(
		pactl list sinks | grep '^[[:space:]]Volume' | awk '{print $5}'
			) | gdbar -max 100 -min 0 -s '-'
		}

	Vol
