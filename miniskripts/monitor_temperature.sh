#!/usr/bin/env bash

# Only tested on my Arch machine, so no guarentees 
# of cross-compatibility. 
#
# I use it to monitor the temperature because my CPU
# keeps overheating.

while true; do
    cat /sys/class/thermal/thermal_zone0/temp;
    sleep 1s;
    clear;
done
