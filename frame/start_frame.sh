#!/bin/sh
#
# Script to run Digital Picture Frame using Feh
#

# Change number below to the duration, in seconds
# for each photo to be displayed
DELAY="2"

# hide the cursor after 15 seconds
/usr/bin/unclutter -idle 10 &

# Start slide show
/usr/bin/feh --quiet --recursive --randomize --full-screen --slideshow-delay $DELAY /home/pi/ramdisk &

# Phone home and sync
#/home/pi/frame/rsync.sh

exit 0
