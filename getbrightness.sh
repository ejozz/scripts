#! /bin/sh
brightness=$( cat /sys/class/backlight/intel_backlight/brightness )
echo "Brightness:" "$brightness" 
