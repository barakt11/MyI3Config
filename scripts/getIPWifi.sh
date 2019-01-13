wifiIP=$(ifconfig wlp2s0 2>/dev/null|awk '/inet / {print $2}')
if [ -z "$wifiIP" ]
then
      exit
fi
echo "<span weight=\"bold\" font_desc=\"Sans Italic 11\">🌍</span><span font_desc=\"Sans Italic 10\"> $wifiIP</span>"
case $BLOCK_BUTTON in
  3) echo "$wifiIP" | xsel -i -b ;;  # right click, copy 
esac