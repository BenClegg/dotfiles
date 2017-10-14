#!/bin/bash

internal=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage" | grep -oP '\d+(?=%)')
external=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -E "percentage" | grep -oP '\d+(?=%)')

echo $internal% $external%
