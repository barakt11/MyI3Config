#!/bin/sh
#i3-msg move workspace to output left
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 3840x0 --rotate normal --output DP-1-2 --mode 1920x1200 --pos 0x0 --rotate normal --output HDMI-2 --off --output HDMI-1 --off --output DP-1 --off --output DP-1-3 --off --output DP-2 --off --output DP-1-1 --mode 1920x1200 --pos 1920x0 --rotate normal
~/scripts/changeWallpaper.sh