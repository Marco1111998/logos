#!/bin/bash

# TVI - update the stream URL of TVI

sed -i "/live_tvi\/live_tvi/ c https://video-auth6.iol.pt/live_tvi/live_tvi/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" m3upt.m3u

# CNN PORTUGAL - update the stream URL of CNN PORTUGAL

sed -i "/live_cnn/ c https://video-auth7.iol.pt/live_cnn/live_cnn/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" m3upt.m3u

# TVI INTERNACIONAL - update the stream URL of TVI INTERNACIONAL

sed -i "/live_tvi_internacional/ c https://video-auth6.iol.pt/live_tvi_internacional/live_tvi_internacional/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" m3upt.m3u

# PORTO CANAL - update the stream URL of PORTO CANAL

python porto_canal.py && sed -e '/x8egnb8/ {' -e 'r porto_canal.txt' -e 'd' -e '}' -i m3upt.m3u

exit 0
