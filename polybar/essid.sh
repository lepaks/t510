#!/bin/bash
ESSID=$(iwgetid wlan0 -r)

if [ -z "$ESSID" ]; then
    echo "no wifi"
else
    echo "$ESSID"
fi
