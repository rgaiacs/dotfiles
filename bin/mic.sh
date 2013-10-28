#!/bin/bash
#
# This is a script to mute/unmute the mic using amixer.

while getopts nth name
do
case $name in
        n)
            amixer -c 0 set 'Mic' 100%
            amixer -c 0 set 'Mic Boost' 0%
            amixer -c 0 set 'Capture' 26.0dB
            amixer -c 0 set 'Digital' 7.0dB
            amixer -c 0 set 'Internal Mic Boost' 0%;;
        t)
            amixer -c 0 set 'Capture' toggle;;
        h)
            echo "Mute/unmute the mic using amixer."
            echo '';&
        ?)
            echo 'Usage: mic.sh [options]'
            echo ''
            echo 'Avaliable options:'
            echo ''
            echo ' -h help'
            echo ' -n normalize and unmute'
            echo ' -t toogle mic'
            exit 2;;
    esac
done
