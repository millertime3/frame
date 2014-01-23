#!/bin/sh
#
# Script to turn on display
#

# Set display so that script will effect screen on frame
export DISPLAY=:0

/usr/bin/xset s reset
/usr/bin/xset s off

exit 0
