battery=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {print $2}')
charging=$(cat /sys/class/power_supply/BAT0/status)
echo "$charging <span weight=\"bold\" font_desc=\"Sans 11\"></span><span font_desc=\"Sans Italic 10\"> $battery</span>"
# if [ "$charging" == "Discharging" ]
# 	then
# 		echo "<span weight=\"bold\" font_desc=\"Sans 11\">c</span><span font_desc=\"Sans Italic 10\"> $battery</span>"
# 	else
# 		echo "<span weight=\"bold\" font_desc=\"Sans 11\"></span><span font_desc=\"Sans Italic 10\"> $battery</span>"
# fi

# not working well