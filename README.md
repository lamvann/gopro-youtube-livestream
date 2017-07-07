# gopro-youtube-livestream
Livestream from a GoPro camera to Youtube the easy way!

Recently I found myself needing to livestream to YouTube from a GoPro camera and I was frustrated when I found out nothing worked. I tried using VLC, Quick and other software but nothing seem to do the trick.

Finally, after looking around I came up with a simple solution that involved using a few amazing CLI tools called "ffmpeg" and "ffplay". Additionally, there are some other tasks that need to be done beside sending data to YouTube, such as refreshing the GoPro stream through the browser and sending keep-alive packets to it. This needs to be done EVERY TIME you want to stream.

This represents a big pain you-know-where, so I put together a BASH script that automates the entire process. Hope you enjoy!

## Requirements: ##
I used the following when I tested this script:

* MacBook Pro running Sierra
* GoPro Hero 4 running the latest firmware as of July 2017
* Python 3.6.1 - MAKE SURE YOU UPDATE PYTHON
* USB to Ethernet adapter if your MacBook does not come with it (mine didn't)

## Setup ##
Needs at least 2 interfaces. My setup was a WiFi connection to GoPro,
Ethernet Connection to Internet. This tutorial assumes you are connected to both the go pro and the internet.

* Step 1: Download and uncompress the contents of this repository onto your desktop

* Step 2: Open terminal on mac (<kbd>⌘ + spacebar</kbd> then type "terminal" and press enter)

* Step 3: Go to folder containing scripts: `cd ~/Desktop/gopro-youtube-livestream`

* Step 4: Give execution rights to both scripts `chmod +x golive.sh ; chmod +x test.sh`

* Step 5: Test streaming connection with `./test.sh`

* Step 6: Start livestreaming with `./golive.sh XXXX-XXXX-XXXX-XXXX`

### Note: "XXXX-XXXX-XXXX-XXXX" represents YOUR YouTube Stream name/key, also notice there is a space in between the "./golive.sh" and the "XXXX-XXXX-XXXX-XXXX" ###

## Additional Resources ##
Special thanks to whoever made the tutorial below
`https://www.yatko.com/live-streaming/gopro-live-streaming`

