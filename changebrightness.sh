#!/bin/bash
inc=$1
cur_brightness=$( cat /sys/class/backlight/intel_backlight/brightness )
new_brightness=$(($inc+$cur_brightness))
if [ $new_brightness -gt 0 ] && [ $new_brightness -le 7500 ]
then
    echo $new_brightness > //sys/class/backlight/intel_backlight/brightness
fi
