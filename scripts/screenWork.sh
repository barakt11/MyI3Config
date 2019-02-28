#!/bin/sh
xrandr --output eDP-1 --mode 2048x1152 --pos 3840x0 --rotate normal --output DP-1-2 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output HDMI-2 --off --output HDMI-1 --off --output DP-1 --off --output DP-1-3 --off --output DP-2 --off --output DP-1-1 --mode 1920x1200 --pos 1920x0 --rotate normal
i3-msg "workspace 1, move workspace to output DP-1-2"
i3-msg "workspace 2, move workspace to output DP-1-1"
i3-msg "workspace 3, move workspace to output eDP-1"
