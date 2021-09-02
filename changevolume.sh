#!/bin/bash
inc=$1
cur_vol=$( pulsemixer --get-volume | sed 's/\s.*$//' )
new_vol=$(($inc+$cur_vol))
if [ $new_vol -ge 0 ] && [ $new_vol -le 100 ]
then
    pulsemixer --change-volume $inc
fi
