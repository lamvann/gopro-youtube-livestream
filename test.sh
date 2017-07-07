#!/bin/bash

#Start streaming to youtube using your Stream name/key
ffplay -an -fflags nobuffer -f:v mpegts -probesize 8192 rtp://10.5.5.9:8554 &

#Refresh GoPro real-time A/V stream
curl "http://10.5.5.9/gp/gpControl/execute?p1=gpStream&c1=restart"

#Send GoPro Hero4 UDP keep-alive packets
python keepalive.py
