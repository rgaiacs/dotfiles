#!/bin/bash
#
# This is a script to mute/unmute the mic using amixer.

while getopts spmth name
do
case $name in
        s)
            amixer -c 0 set 'Speaker' toggle;;
        p)
            amixer -c 0 set 'Headphone' toggle;;
        m)
            amixer -c 0 set 'Master' mute;;
        t)
            amixer -c 0 set 'Master' toggle;;
        h)
            echo "Mute/unmute the mic using amixer."
            echo '';&
        ?)
            echo 'Usage: mic.sh [options]'
            echo ''
            echo 'Avaliable options:'
            echo ''
            echo ' -h help'
            echo ' -m mute master'
            echo ' -p toggle headphone'
            echo ' -s toogle speaker'
            echo ' -t toogle master'
            exit 2;;
    esac
done
