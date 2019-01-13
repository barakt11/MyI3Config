pubIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
if [ -z "$pubIP" ]
then
      exit
fi
echo "<span weight=\"bold\" font_desc=\"Sans Italic 11\">🌍</span><span font_desc=\"Sans Italic 10\"> $pubIP</span>"
case $BLOCK_BUTTON in
  3) echo "$pubIP" | xsel -i -b ;;  # right click, copy 
esac