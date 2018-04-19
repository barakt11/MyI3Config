cd ~/
BURPSTR="burpsuite_pro_1.7."
RES=$(ls ~/ | grep -oP "(?<=$BURPSTR).*(?=.jar)")
RES=${RES##*$'\n'}
BURPJAR=$(ls ~/ | grep $BURPSTR$RES)
java -jar $BURPJAR