#!/bin/bash

#Start streaming to youtube using your Stream name/key
ffmpeg -thread_queue_size 512 -f:v mpegts -probesize 8192 -i rtp://10.5.5.9:8554 -c:v libx264 -b:v 1M -vf scale=-1:720 -r 25 -c:a aac -ar 44100 -b:a 128k -tune zerolatency -preset ultrafast -flags +global_header -f flv rtmp://a.rtmp.youtube.com/live2/$1 &

#Refresh GoPro real-time A/V stream
curl "http://10.5.5.9/gp/gpControl/execute?p1=gpStream&c1=restart"

#Send GoPro Hero4 UDP keep-alive packets
python keepalive.py
