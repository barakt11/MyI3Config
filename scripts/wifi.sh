WIFI=$(iw dev wlp2s0 link | grep SSID | cut -d " " -f 2-)
if [ -z "$WIFI" ]
then
      exit
fi
echo "<span weight=\"bold\" font_desc=\"Sans Italic 12\">📶</span><span font_desc=\"Sans Italic 10\"> $WIFI</span>"