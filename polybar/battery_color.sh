#!/bin/bash

percentage=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$percentage" -ge 100 ]; then
    echo "%{F#00FF00}$percentage%"
elif [ "$percentage" -ge 50 ]; then
    echo "%{F#424153}$percentage%"
else
    echo "%{F#FF3333}$percentage%"
fi

