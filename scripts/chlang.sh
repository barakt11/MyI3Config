#!/bin/bash

(setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap il || setxkbmap us
pkill -RTMIN+1 i3blocks
