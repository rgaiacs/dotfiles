#!/bin/bash
#
# Setup the dot files

# Avoid symbolic link loop
rm -f ~/bin

for f in $(ls -A | grep -v -E -f setup-exclude.txt)
do
    # Create symbolic link to files
    ln -v -f -s ${PWD}/$f ~/$f;
done

# .vimrc
ln -v -f -s ${PWD}/.vim/.vimrc ~/.vimrc;
