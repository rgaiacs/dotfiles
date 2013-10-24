#!/bin/bash
#
# Setup the dot files

for f in $(ls -A | grep -v -F -f setup-exclude.txt)
do
    echo ln -s $f ~/$f;
done
