# gopro-youtube-livestream
Livestream from a GoPro camera to Youtube the easy way!

Recently I found myself needing to livestream to YouTube from a GoPro camera and I was frustrated when I found out nothing worked. I tried using VLC, Quick and other software but nothing seem to do the trick.

Finally, after looking around I came up with a simple solution that involved using a few amazing CLI tools called "ffmpeg" and "ffplay". Additionally, there are some other tasks that need to be done beside sending data to YouTube, such as refreshing the GoPro stream through the browser and sending keep-alive packets to it. This needs to be done EVERY TIME you want to stream.

This represents a big pain you-know-where, so I put together a BASH script that automates the entire process. Hope you enjoy!

#Requirements:
I used the following when I tested this script:

MacBook Pro running Sierra
GoPro Hero 4 running the latest firmware as of July 2017
Python 3.6.1 - MAKE SURE YOU UPDATE PYTHON

#Prerequisites
WiFi connection to GoPro
Ethernet Connection to Internet

Step 1:
Download and uncompress the contents of this repository onto your desktop

Step 2:
Open terminal on mac (CMD + Spacebar; then type terminal and press enter)

Step3:
Go to folder containing scripts:
