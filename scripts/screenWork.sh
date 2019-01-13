#!/bin/sh
#i3-msg move workspace to output left
xrandr --output HDMI-1-2 --off --output HDMI-1-1 --off --output eDP-1-1 --mode 2560x1440 --pos 3840x0 --rotate normal --output DP-1-1-3 --off --output DP-1-1-2 --mode 1920x1200 --pos 0x0 --rotate normal --output DP-1-1-1 --mode 1920x1200 --pos 1920x0 --rotate normal --output DP-1-2 --off --output DP-1-1 --off
~/scripts/changeWallpaper.sh
i3-msg "workspace 3, move workspace to output eDP-1-1"
i3-msg "workspace 2, move workspace to output DP-1-1-1"
i3-msg "workspace 1, move workspace to output DP-1-1-2"
