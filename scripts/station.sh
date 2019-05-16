cd ~/softwares/station/
STATIONSTR="browserX-"
RES=$(ls ~/softwares/station/ | grep -oP "(?<=$STATIONSTR).*(?=-x86_64.AppImage)")
RES=$(echo $RES | awk '{print $NF}')
FILE=$(ls ~/softwares/station/ | grep $STATIONSTR$RES-x86_64.AppImage)
./$FILE