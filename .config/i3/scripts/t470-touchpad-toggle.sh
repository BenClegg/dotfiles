#!/bin/bash

# Toggle T470 Synaptic touchpad on/off

state=$(synclient | grep -E "TouchpadOff" | grep -oP '\d+(?=)')

if [ "$state" = "0" ]; then
	echo "disabling.."
	exec "synclient" "TouchpadOff=1"
else
	echo "enabling..."
	exec "synclient" "TouchpadOff=0"
fi 
