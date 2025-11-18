#!/bin/bash

percentage=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$percentage" -ge 100 ]; then
    echo "%{F#00FF00}$percentage%"
else
    echo "$percentage"
fi

