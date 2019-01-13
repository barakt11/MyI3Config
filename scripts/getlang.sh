#!/bin/bash
currentLang=$(/home/barakt/softwares/xkblayout-state/xkblayout-state print %n)
echo "<span weight=\"bold\" font_desc=\"Sans 12\">⌘</span><span font_desc=\"Sans Italic 10\"> $currentLang</span>"
# Update i3blocks
pkill -RTMIN+1 i3blocks
# echo $(setxkbmap -query | awk '/layout/{print $2}' | tr '[:lower:]' '[:upper:]') 
