cd ~/softwares/burpsuite/
BURPSTR="burpsuite_pro_v2.0."
RES=$(ls ~/softwares/burpsuite/ | grep -oP "(?<=$BURPSTR).*(?=.jar)")
RES=$(echo $RES | awk '{print $NF}')
BURPJAR=$(ls ~/softwares/burpsuite/ | grep $BURPSTR$RES)
java -jar ~/softwares/burpsuite/$BURPJAR