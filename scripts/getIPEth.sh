ethIP=$(ifconfig enxd481d71ad9f9 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://')
if [ -z "$ethIP" ]
then
      exit
fi
echo "<span weight=\"bold\" font_desc=\"Sans Italic 11\">🌍</span><span font_desc=\"Sans Italic 10\"> $ethIP</span>"
case $BLOCK_BUTTON in
  3) echo "$ethIP" | xsel -i -b ;;  # right click, copy 
esac