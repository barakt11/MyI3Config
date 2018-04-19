#!/bin/bash

VOLUME=$(~/scripts/pamixer --get-volume)
VALUE=5

case "$1" in
  "up")
    [[ "$VOLUME" -eq 100 ]] && VALUE=0
    ~/scripts/pamixer -u
    ~/scripts/pamixer --increase $VALUE
    # say yo
    ;;
  "down")
    ~/scripts/pamixer -u
    ~/scripts/pamixer --decrease $VALUE
    # say yo
    ;;
  "mute")
    ~/scripts/pamixer -m
    echo "test " > /tmp/test.txt
    ;;
esac

# Notification
VOLUME=$(~/scripts/pamixer --get-volume)
MUTE=$(~/scripts/pamixer --get-mute)

if [ "$MUTE" == "false" ]; then
  volnoti-show $VOLUME
else
  volnoti-show -m $VOLUME
fi

# Update i3blocks
pkill -RTMIN+2 i3blocks
