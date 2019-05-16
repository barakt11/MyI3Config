#!/bin/bash
currentLang=$(setxkbmap -query | grep layout | awk '{print $2}')

echo "<span weight=\"bold\" font_desc=\"Sans 12\">⌘</span><span font_desc=\"Sans Italic 12\"> $currentLang</span>"
# Update i3blocks
pkill -RTMIN+1 i3blocks
