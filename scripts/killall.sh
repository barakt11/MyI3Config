ps -ef | grep "$1" | grep -v grep | awk '{print $2}' | xargs -r kill -9
