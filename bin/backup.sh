#!/bin/sh
# -v verbose
# -r recursively
# -l copy symlinks as symlinks
# -h output numbers in human-readble
# --progress show progress during transfer
rsync -vrlh --progress $1 $2
