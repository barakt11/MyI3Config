#!/bin/sh
xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 2880x1620 --pos 3840x0 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP1-3 --off --output DP1-2 --mode 1920x1200 --pos 0x0 --rotate normal --output DP1-1 --off --output DP2 --off
sleep 1;
xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 2880x1620 --pos 3840x0 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP1-3 --off --output DP1-2 --mode 1920x1200 --pos 0x0 --rotate normal --output DP1-1 --mode 1920x1200 --pos 1920x0 --rotate normal --output DP2 --off
xrandr --output DP1-2 --brightness 0.7
xrandr --output DP1-1 --brightness 0.7

i3-msg "workspace 1, move workspace to output DP1-2"
i3-msg "workspace 2, move workspace to output DP1-1"
i3-msg "workspace 3, move workspace to output eDP1"

echo "Xft.dpi: 100" > ~/.Xresources
xrdb -load ~/.Xresources
