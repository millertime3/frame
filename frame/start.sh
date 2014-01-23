#!/bin/sh
#
# Script to turn off display
#

# Set display so that script will effect screen on frame
export DISPLAY=:1

/usr/bin/xset s reset
/usr/bin/xset s on
/usr/bin/xset s 1

exit 0
