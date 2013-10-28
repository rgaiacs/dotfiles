#!/bin/bash
ffmpeg -y -f x11grab -s 800x600 -r 25 -i :0.0 -f alsa -ac 1 -i default $1
